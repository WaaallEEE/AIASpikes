import os
import pandas as pd
import numpy as np
import astropy.io.fits as fits
from pathlib import Path
from multiprocessing import Pool
import time
import logging


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


def extract_coincidentals(spikes_list, idx):
    # Spikes coordinates at given wavelength index
    spikes_w = spikes_list[idx]
    # Associated neighbour coordinates
    nb_pixels = LOOKUP_8NB[spikes_w[0, :], :]
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


def process_group(group_n):
    fpaths = PATH_SERIES.loc[group_n]
    spikes_list = [fits.getdata(Path(os.environ['SPIKESDATA'], f)) for f in fpaths]
    group_data = np.concatenate([extract_coincidentals(spikes_list, i) for i in range(7)], axis=1)
    column_names = ['coords', 'int1', 'int2', 'wref', 'w0', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6']
    overlaps_df = pd.DataFrame(group_data.T, columns=column_names)
    overlaps_df.insert(0, 'GroupNumber', group_n)
    overlaps_df['overlaps'] = overlaps_df[['w0', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6']].sum(axis=1).astype(np.uint8)
    return overlaps_df


def process_interval(tinterv):
    print('Processing time interval: ', tinterv)
    groups = SPIKES_DF['GroupNumber'].loc[(SPIKES_DF['Time'] >= tinterv.left) & (SPIKES_DF['Time'] < tinterv.right)].unique()
    df_list = [process_group(n) for n in groups]
    group_df = pd.concat(df_list)
    return group_df


def write_to_parquet(df, date, OUTPUTDIR):
    month_dir = Path(OUTPUTDIR, f'{date.year}', f'{date.month:02d}')
    month_dir.mkdir(parents=True, exist_ok=True)
    df_path = Path(month_dir, f'df_coincidentals_{date.year}_{date.month:02d}_{date.day:02d}.parquet')
    df.to_parquet(df_path, engine='pyarrow')
    return None


# Global scope for shared lookup
OUTPUTDIR = os.environ['SPIKESDATA']
SPIKES_DF = pd.read_parquet(Path(OUTPUTDIR, 'spikes_df_2010.parquet'), engine='pyarrow')
PATH_SERIES = SPIKES_DF.set_index(['GroupNumber', 'Time'])['Path']
# Create data for lookup from the child processes.
LOOKUP_8NB = create_lookup_8nb(4096, 4096)

if __name__ == '__main__':

    logging.basicConfig(filename=Path(OUTPUTDIR, 'profiling.log').as_posix(),
                        datefmt='%Y-%m-%d %H:%M:%S',
                        level=logging.INFO,
                        format='%(asctime)s %(levelname)-8s %(message)s')
    logger = logging.getLogger("my logger")

    tstart = pd.Timestamp('2010-07-12 00:00:00', tz='UTC')
    tend = pd.Timestamp('2010-07-13 00:00:00', tz='UTC')
    tintervals = pd.interval_range(start=tstart,
                                   end=tend,
                                   freq='D',
                                   closed='left')

    n_workers = 60
    profile_tstart = time.time()
    logger.info(f'Starting pool of {n_workers} workers')

    with Pool(processes=n_workers) as pool:
        # The Pool should parallelize over the groups rather than the intervals when there are more cores available than
        # intervals, as each interval is made of hundreds of groups.
        for tinterval in tintervals:
            print('Processing time interval: ', tinterval)
            groups = SPIKES_DF['GroupNumber'].loc[
                (SPIKES_DF['Time'] >= tinterval.left) & (SPIKES_DF['Time'] < tinterval.right)].unique()
            df_list = pool.map(process_group, groups)
            group_df = pd.concat(df_list)
            write_to_parquet(group_df, tinterval.left, OUTPUTDIR)

    etime = (time.time() - profile_tstart)/60
    logger.info(f'Total wall time: {etime:1.2f} min')
