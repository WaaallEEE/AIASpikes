import os
import pandas as pd
import numpy as np
import fitsio
from pathlib import Path, PurePath
from multiprocessing import Pool, Manager
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
    nb_pixels = index_8nb[spikes_w[0, :], :]
    # Sublist of spikes data that will excludes the one serving as template
    spikes_sublist = spikes_list[:idx] + spikes_list[idx + 1:]
    # Coincidental cross-referencing.
    mask_w_arr = np.array([np.isin(nb_pixels, index_8nb[spikes[0, :], :]).any(axis=1) for spikes in spikes_sublist])
    select_pixels = mask_w_arr.any(axis=0)
    coords_w = spikes_w[0, select_pixels]
    w_tables = np.insert(mask_w_arr[:, select_pixels], idx, True, axis=0)
    # Retrieve intensity values for the selected coordinates
    intensities = spikes_w[1:, select_pixels]
    arr_w = np.concatenate([coords_w[np.newaxis, ...], intensities, w_tables], axis=0)
    arr_w = np.insert(arr_w, 3, idx, axis=0)

    return arr_w


def process_group(group_n):
    fpaths = path_Series.loc[group_n]
    spikes_list = [fitsio.read(os.path.join(os.environ['SPIKESDATA'], f)) for f in fpaths]
    group_data = np.concatenate([extract_coincidentals(spikes_list, i) for i in range(7)], axis=1)
    column_names = ['coords', 'int1', 'int2', 'wref', 'w0', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6']
    coincidental_spikes_df = pd.DataFrame(group_data.T, columns=column_names)
    coincidental_spikes_df['GroupNumber'] = group_n
    return coincidental_spikes_df


def write_to_parquet(ns, df_path):
    logger.info('Writing to parquet')
    # day_dir = PurePath(outputdir, '{:d}/{:02d}'.format(date.year, date.month)).as_posix()
    # Path(day_dir).mkdir(parents=True, exist_ok=True)
    # df_path = PurePath(day_dir, 'df_coincidentals_{:d}_{:02d}_{:02d}.parquet'.format(date.year, date.month, date.day)).as_posix()
    ns.df.to_parquet(df_path, engine='pyarrow', compression=None)
    # print('parquet file created: {:s}'.format(df_path))
    logger.info('parquet file created: {:s}'.format(df_path))
    return df_path


if __name__ == '__main__':

    outputdir = PurePath('/media/user/SPIKESDF/', 'raphael/data/AIA_Spikes/parquet_dataframes').as_posix()
    Path(outputdir).mkdir(parents=True, exist_ok=True)

    logging.basicConfig(filename=PurePath(outputdir, 'files_creation_times.log').as_posix(),
                        datefmt='%Y-%m-%d %H:%M:%S',
                        level=logging.INFO,
                        format='%(asctime)s %(levelname)-8s %(message)s')
    logger = logging.getLogger("my logger")

    # Create data for lookup from the child processes.
    index_8nb = create_lookup_8nb(4096, 4096)
    spikes_df = pd.read_parquet(os.path.join(os.environ['SPIKESDATA'], 'spikes_df_2010_filtered.parquet'), engine='pyarrow')
    spikes_df2 = spikes_df.set_index(['GroupNumber', 'Time'])
    path_Series = spikes_df2['Path']
    tintervals = pd.interval_range(start=pd.Timestamp('2010-05-13 00:00:00', tz='UTC'), end=pd.Timestamp('2011-01-01 00:00:00', tz='UTC'),
                                   freq='D', closed='left')

    mgr = Manager()
    ns = mgr.Namespace()
    n_workers = 60
    tstart = time.time()
    logger.info('Starting pool of {:d} workers'.format(n_workers))

    with Pool(processes=n_workers) as pool:
        for tinterval in tintervals[0:2]:
            t1 = time.time()
            logger.info('Starting interval processing for {:s}'.format(tinterval.left.strftime('%Y %m %d')))
            # groups = spikes_df['GroupNumber'].loc[(spikes_df['Time'] >= '2010-12-01 21:00:00') & (spikes_df['Time'] < '2010-12-01 23:59:59')].unique()
            groups = spikes_df['GroupNumber'].loc[(spikes_df['Time'] >= tinterval.left) & (spikes_df['Time'] < tinterval.right)].unique()
            group_df_list = pool.map(process_group, groups, 100)
            df = pd.concat(group_df_list)
            print('processed dataframe for {:s}'.format(tinterval.left.strftime('%Y %m %d')))
            logger.info('processed dataframe for {:s}'.format(tinterval.left.strftime('%Y %m %d')))
            # Write to parquet file
            date = tinterval.left
            day_dir = PurePath(outputdir, '{:d}/{:02d}'.format(date.year, date.month)).as_posix()
            Path(day_dir).mkdir(parents=True, exist_ok=True)
            df_path = PurePath(day_dir, 'df_coincidentals_{:d}_{:02d}_{:02d}.parquet'.format(date.year, date.month,
                                                                                             date.day)).as_posix()
            ns.df = df
            res = pool.apply_async(write_to_parquet, (ns, df_path))
            temp = res.get()
            # write_to_parquet(df, tinterval.left, outputdir)
            etime = time.time() - t1
            print('Wall time: {:1.2f} min'.format(etime / 60))

    etime = time.time() - tstart

    print('Total wall time: {:1.2f} min'.format(etime/60))
