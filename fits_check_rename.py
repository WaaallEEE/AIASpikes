import os
from pathlib import Path
import fitsio
from multiprocessing import Pool
import time
import pandas as pd


def recompress(fits_file):
    spikes = fitsio.read(fits_file)
    new_fits_f = fits_file.parents[0] / str(fits_file.stem + '_c.fits')
    print(new_fits_f)
    fitsio.write(new_fits_f, spikes, compress='rice', clobber=True)
    os.remove(fits_file)


def check_compression(fits_file):
    fits = fitsio.FITS(fits_file)
    if len(fits) == 1:
        print(str(fits_file))


def check_compression_rename_fits(idx):
    filename = fseries.loc[idx]
    fits_path = os.path.join(parent_dir, filename)
    fits = fitsio.FITS(fits_path)
    uncompressed = None
    if len(fits) == 1:
        print('idx = {:d} {:s}'.format(idx, fits_path))
        uncompressed = fits_path
    fits.close()
    new_filename = filename.replace(':', '')
    new_fits_path = os.path.join(parent_dir, new_filename)
    # os.rename(fits_path, new_fits_path)
    return uncompressed


def run_parallel_jobs(processes):

    tstart = time.time()
    if processes == 1:
        uncompressed_list = list(map(check_compression_rename_fits, filedf.index))
    else:
        p = Pool(processes=processes)
        uncompressed_list = p.map(check_compression_rename_fits, filedf.index)
        p.close()
        p.join()
    telapsed1 = (time.time() - tstart) / 60
    print('elapsed time with {:d} process(es) : {:1.1f} min'.format(processes, telapsed1))
    return uncompressed_list


parent_dir = os.environ['SPIKESDATA']

flist = os.path.join(parent_dir, 'file_list_2010_06.txt')
print('Creating dataframe from list in text file at ', flist)
filedf = pd.read_csv(flist, header=0, names=['path'])
filedf.sort_values(by=['path'], inplace=True)
filedf.reset_index(inplace=True, drop=True)
fseries = filedf['path']
print('Creating Timestamp from filenames...')
filedf['timestamp'] = fseries.apply(lambda s: pd.Timestamp(Path(s).stem[0:-12]))

print('Starting parallel jobs...')
nprocesses = [1, 2, 4, 6, 8, 12]
for np in nprocesses:
    _ = run_parallel_jobs(np)


# filedf.drop('path', axis=1, inplace=True)
# # New filenames will have the colon ":" remove from the basename
# filedf['path'] = fseries.apply(lambda s: s.replace(':', ''))
#
# hdf_file = os.path.join(parent_dir, 'spikes_df.h5')
# print('writing to hdf5 at ', hdf_file)
# filedf.to_hdf(hdf_file, key='filedf', mode='w')


