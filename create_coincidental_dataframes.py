import os
import pandas as pd
import numpy as np
import fitsio
from pathlib import Path
from multiprocessing import Pool
import time
import logging
from functools import partial


def create_lookup_8nb(nx, ny):
    """ Pre-compute the 8-connectivity lookup table. This will be shared across parallel workers.
    :param nx:
    :param ny:
    :return:
    """
    # List of relative 2D coordinates for 8-neighbour connectiviy (9-element list). 1st one is the origin pixel.
    coords_8nb = np.array([[0, 0], [-1, 0], [-1, -1], [0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1]])
    # Array of 2D coordinates for a 4096 x 4096 array. Matrix convention is kept. [rows, cols] = [y-axis, x-axis]
    coords_1d = np.arange(nx * ny)
    coordy, coordx = np.unravel_index(coords_1d, [ny, nx]) # also possible by raveling a meshgrid() output
    coords2d = np.array([coordy, coordx])
    # Create the array of 2D coordinates of 8-neighbours associated with each pixel.
    # pixel 0 has 8 neighbour + itself, pixel 1 has 8 neighbour + itself, etc...
    coords2d_8nb = coords2d[np.newaxis, ...] + coords_8nb[..., np.newaxis]
    # Handle off-edges coordinates by clipping to the edges, operation done in-place. Here, square detector assumed.
    # to per-axis clipping if that ever changes for another instrument.
    np.clip(coords2d_8nb, 0, nx-1, out=coords2d_8nb)
    # Convert to 1D coordinates.
    lookup_coords = np.array([coords2d_8nb[i, 0, :] * nx + coords2d_8nb[i, 1, :] for i in range(len(coords_8nb))],
                         dtype='int32', order='C').T
    return lookup_coords


def extract_coincidentals(spikes_list, idx, lookup_8nb):
    # Spikes coordinates at given wavelength index
    spikes_w = spikes_list[idx]
    # Associated neighbour coordinates
    nb_pixels = lookup_8nb[spikes_w[0, :], :]
    # Sublist of spikes data that will excludes the one serving as template
    spikes_sublist = spikes_list[:idx] + spikes_list[idx + 1:]
    # Coincidental cross-referencing.
    # mask_w_arr = np.array([np.isin(nb_pixels, index_8nb[spikes[0, :], :]).any(axis=1) for spikes in spikes_sublist])
    mask_w_arr = np.array([np.isin(nb_pixels, spikes[0, :]).any(axis=1) for spikes in spikes_sublist])
    select_pixels = mask_w_arr.any(axis=0)
    coords_w = spikes_w[0, select_pixels]
    w_tables = np.insert(mask_w_arr[:, select_pixels], idx, True, axis=0)
    # Retrieve intensity values for the selected coordinates
    intensities = spikes_w[1:, select_pixels]
    arr_w = np.concatenate([coords_w[np.newaxis, ...], intensities, w_tables], axis=0)
    arr_w = np.insert(arr_w, 3, idx, axis=0)

    return arr_w


def process_group(df, group_n, lookup_8nb):
    fpaths = df['Path'].loc[group_n]
    spikes_list = [fitsio.read(os.path.join(os.environ['SPIKESDATA'], f)) for f in fpaths]
    group_data = np.concatenate([extract_coincidentals(spikes_list, i, lookup_8nb) for i in range(7)], axis=1)
    column_names = ['coords', 'int1', 'int2', 'wref', 'w0', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6']
    overlaps_df = pd.DataFrame(group_data.T, columns=column_names)
    overlaps_df.insert(0, 'GroupNumber', group_n)
    overlaps_df['overlaps'] = overlaps_df[['w0', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6']].sum(axis=1).astype(np.uint8)
    return overlaps_df


def process_interval(tinterv, lookup_8nb):
    print('Processing time interval: ', tinterv)
    spikes_df2 = spikes_df.loc[(spikes_df['Time'] >= tinterv.left) & (spikes_df['Time'] < tinterv.right)].set_index(['GroupNumber', 'Time'])
    groups = spikes_df2.index.get_level_values(0).unique().values
    df_list = [process_group(spikes_df2, n, lookup_8nb) for n in groups]
    group_df = pd.concat(df_list)
    return group_df


def write_to_parquet(df, date, outputdir):
    month_dir = Path(outputdir, f'{date.year}', f'{date.month:02d}')
    month_dir.mkdir(parents=True, exist_ok=True)
    df_path = Path(month_dir, f'df_coincidentals_{date.year}_{date.month:02d}_{date.day:02d}.parquet')
    df.to_parquet(df_path, engine='pyarrow')
    return None


# Global scope for shared lookup
outputdir = os.environ['SPIKESDATA']
spikes_df = pd.read_parquet(Path(outputdir, 'spikes_df_2018.parquet'), engine='pyarrow')


if __name__ == '__main__':

    logging.basicConfig(filename=Path(outputdir, 'profiling.log').as_posix(),
                        datefmt='%Y-%m-%d %H:%M:%S',
                        level=logging.INFO,
                        format='%(asctime)s %(levelname)-8s %(message)s')
    logger = logging.getLogger("my logger")


    tstart = pd.Timestamp('2018-01-01 00:00:00', tz='UTC')
    tend = pd.Timestamp('2018-01-02 00:00:00', tz='UTC')
    tintervals = pd.interval_range(start=tstart,
                                   end=tend,
                                   freq='H',
                                   closed='left')
    # Create data for lookup from the child processes.
    index_8nb = create_lookup_8nb(4096, 4096)

    n_workers = 10
    profile_tstart = time.time()
    logger.info(f'Starting pool of {n_workers} workers')

    with Pool(processes=n_workers) as pool:
        partial_process_interval = partial(process_interval, lookup_8nb=index_8nb)
        group_df_list = pool.map(partial_process_interval, tintervals)

    group_df_all_intervals = pd.concat(group_df_list)
    write_to_parquet(group_df_all_intervals, tstart, outputdir)

    etime = (time.time() - profile_tstart)/60
    logger.info(f'Total wall time: {etime:1.2f} min')
