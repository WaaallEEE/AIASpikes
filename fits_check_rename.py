import os, glob
from pathlib import Path
import fitsio
from multiprocessing import Pool
import time

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

def check_compression_rename_fits(fits_file):
    fits = fitsio.FITS(fits_file)
    if len(fits) == 1:
        print(str(fits_file))
    fits.close()
    new_fits_f = fits_file.parents[0] / str(fits_file.name).replace(':', '_')
    os.rename(fits_file, new_fits_f)


datadir = os.environ['SPIKESDATA']
print('listing files...')
flist = sorted(Path(datadir).rglob('*.fits'))

print('Starting parallel jobs...')
with Pool(processes=4) as p:
    p.map(check_compression_rename_fits, flist)

# # Get wall clock time:
# tstart = time.time()
# with Pool(processes=4) as p:
#     p.map(recompress, flist)
#
# telapsed = time.time() - tstart
#
# print('elapsed time (sec) : ', telapsed)


