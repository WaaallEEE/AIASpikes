import os
import pandas as pd
import numpy as np
from astropy.io import fits
import fitsio


def get_filepaths(group_nb, file_paths, unique_indices, group_count, data_directory):
    """ Get the path of each file belonging to the given group number

    :param group_nb: group number
    :param file_paths: numpy array of all relative file paths
    :param unique_indices: indices of the unique group number
    :param group_count: how many files in that group
    :param data_directory: directory to append relative paths to make them absolute
    :return:
    """

    # Get the path of each file of the given group number (group_index).
    path_index = unique_indices[group_nb]
    # Get how many files in the group (should typically be 7, for 7 wavelengths)
    count = group_count[group_nb]
    paths = [os.path.join(data_directory, fpath) for fpath in file_paths[path_index:path_index + count]]
    return paths


def delete_files(folder):
    for filename in os.listdir(folder):
        os.remove(os.path.abspath(os.path.join(folder, filename)))


def filter_spike_file_rename(n_co_spikes, old_filename, output_dir):
    # Return a modified filename of the filtered spike files.
    basename = os.path.basename(old_filename)
    new_name = 'filtered' + str(n_co_spikes)
    return os.path.join(output_dir, basename.replace('spikes', new_name))


def count_intersect(raw_spikes, coincidental_1d_coords, count_filter_idx, counts):
    """ Provides the coincidental coordinates and their indices in the raw spike file and occurence count
    within the group. The indices in the raw spike file are used to retrieve the intensity values (before/after)

    :param raw_spikes: list of spikes for one wavelength
    :param coincidental_1d_coords: list of 1D coordinates of coincidental spikes integrated for the whole group
    :param count_filter_idx: list of indices of the coincidental spikes mapping to the original list of spikes coords.
    :param counts: distribution of spikes coords
    :return: Coincidental coordinates, index in spike file, number of occurences >=n_co_spikes
    """

    file_coords, idx1, idx2 = np.intersect1d(raw_spikes[0, :], coincidental_1d_coords, return_indices=True)
    # Retrieve how many coincidental hits we had within the 8 neighbours.
    group_counts = counts[count_filter_idx[idx2]]
    return file_coords, idx1, group_counts


def accumulate_spikes(spikes_list, n_co_spikes=2):
    """
    Within a group of up to 7 files:
    - accumulate a list of 1D coordinates within the 8 nearest neighbours of a spike coordinate.
    - get the coordinates that is populated more than once
    - create a mask for each spike file that maps ones to those coordinates satisfying the coincidental criterion above.

    REQUIRES NUMPY >= 1.15 for returning indices out of numpy.intersect1d()

    :param spikes_list:
    :return:
    """

    # spikes list: [7 files] x [1D coordinates, intensity before despiking replacement, intensity after despiking]
    cumulated_spikes_coords = np.unique(index_8nb[:, spikes_list[0][0, :]].ravel())
    for raw_spikes in spikes_list[1:]:
        # Accumulate the coordinates across the 7 files into a single 1D array.
        cumulated_spikes_coords = np.concatenate([cumulated_spikes_coords, np.unique(index_8nb[:, raw_spikes[0, :]].ravel())])
    # Make a curated distribution (numbers that do not exist aren't covered by the algorithm => faster than histogram)
    (distrib_values, counts) = np.unique(cumulated_spikes_coords, return_counts=True) # 35 ms
    # Get the indices of the coordinates that get hit more than n_co_spikes times
    count_filter_idx = np.where(counts >= n_co_spikes)[0]
    # Get these coincicental spikes coordinates
    coincidental_1d_coords = distrib_values[count_filter_idx] # 1 ms
    # Here we have "lost" the info of from which wavelength these hits come from, and how many exactly.
    # Get back to that information by intersecting these coincidental coordinates per wavelength (per file in the group)
    group_coords, group_idx, group_counts = zip(*[count_intersect(raw_spikes, coincidental_1d_coords, count_filter_idx, counts)
                                                  for i, raw_spikes in enumerate(spikes_list)])


    # coincidental_spikes_masks = [np.isin(raw_spikes[0, :], coincidental_1d_coords) for raw_spikes in spikes_list]
    return group_coords, group_idx, group_counts


def thin_array(arr):

    arr_1d = arr.ravel()
    u_elem, c = np.unique(arr_1d, return_counts=True)
    # Keep only coordinates with no overlap with the neighbour within the group
    duplicates = u_elem[c > 1]
    dup_idx = np.array([np.where(arr_1d == d)[0][0] for d in duplicates])
    dup_rows = np.unique((dup_idx / arr.shape[1]).astype(int))

    b = np.delete(arr, dup_rows, axis=0)

    return b




def accumulate_spikes2(spikes_list, n_co_spikes=2):
    """
    Within a group of up to 7 files:
    - accumulate a list of 1D coordinates within the 8 nearest neighbours of a spike coordinate.
    - get the coordinates that is populated more than once
    - create a mask for each spike file that maps ones to those coordinates satisfying the coincidental criterion above.

    REQUIRES NUMPY >= 1.15 for returning indices out of numpy.intersect1d()

    :param spikes_list:
    :return:
    """

    spikes_arrays = [thin_array(index_8nb[:, raw_spikes[0, :]]) for raw_spikes in spikes_list]
    # spikes list: [7 files] x [1D coordinates, intensity before despiking replacement, intensity after despiking]
    u_spikes = np.array([spikes_nb.ravel() for spikes_nb in spikes_arrays])
    # Make a curated distribution (numbers that do not exist aren't covered by the algorithm => faster than histogram)
    (distrib_values, counts) = np.unique(u_spikes, return_counts=True) # 35 ms
    # Get the indices of the coordinates that get hit more than n_co_spikes times
    coincidental_1d_coords = distrib_values[counts >= n_co_spikes]

    # For each of the 7 files
    # Get these coincicental spikes coordinates
    coords, idx1, idx2 = np.intersect1d(u_spikes[0], coincidental_1d_coords, return_indices=True)
    # which rows in the neighbour array?
    rows = np.unique((idx1 / spikes_arrays[0].shape[1]).astype(int))
    select_spikes_coords = spikes_arrays[0][rows, 0]
    raw_spikes_idx = [np.where(spikes_list[0][0, :] == s) for s in select_spikes_coords]

    # Here we have "lost" the info of from which wavelength these hits come from, and how many exactly.
    # Get back to that information by intersecting these coincidental coordinates per wavelength (per file in the group)
    group_coords, group_idx, group_counts = zip(*[count_intersect(raw_spikes, coincidental_1d_coords, count_filter_idx, counts)
                                                  for i, raw_spikes in enumerate(spikes_list)])


    # coincidental_spikes_masks = [np.isin(raw_spikes[0, :], coincidental_1d_coords) for raw_spikes in spikes_list]
    return group_coords, group_idx, group_counts




def process_spikes(group_index, n_co_spikes=2):
    """
     Get the paths to all files belonging to the group numbered by group_index.
     There are typically 7 files per group

    :param group_index: group number as given by grouping the database by unique group indices.
    :param hdu_only: set to True if you do not want to write fits files but want to create the HDU.
    Useful for benchmarking purposes to test I/O times vs compute time
    :return: group_index given as input. Only useful to check parallel processing status.
    """
    fpaths = get_filepaths(group_index, nppaths, uinds, ugroupc, data_dir)
    # Read spikes fits files. They contain 3 columns:
    # (1) 1D coordinates, (2) intensity before despiking replacement, (3) intensity after despiking.
    spikes_list = [fitsio.read(path) for path in fpaths]
    group_coords,  group_idx, group_counts = accumulate_spikes(spikes_list, n_co_spikes=n_co_spikes)


    #write_new_spikes_files2(spikes_list, group_coords, group_idx, group_counts, fpaths)

    return group_index


def write_new_spikes_files2(spikes_list, group_coords, group_idx, group_counts, paths, n_co_spikes=2):
    for i, (raw_spikes, coords, spike_idx, counts) in enumerate(zip(spikes_list, group_coords, group_idx, group_counts)):

        col1 = fits.Column(name='coords', format='J', array=coords.astype(np.int32))
        col2 = fits.Column(name='before', format='K', array=raw_spikes[1, spike_idx].astype(np.int16))
        col3 = fits.Column(name='after', format='K', array=raw_spikes[2, spike_idx].astype(np.int16))
        col4 = fits.Column(name='counts', format='B', array=counts.astype(np.byte))
        coldefs = fits.ColDefs([col1, col2, col3, col4])
        hdu = fits.BinTableHDU.from_columns(coldefs)
        # Write the new fits files
        new_name = filter_spike_file_rename(n_co_spikes, paths[i], output_dir)
        hdu.writeto(new_name, overwrite=True)
        #hdu.writeto(new_name)
    return



# Location of database file referencing the so-called "spikes files").
data_dir = os.environ['SPIKESDATA']
# db_filepath = os.path.join(data_dir, 'Table_SpikesDB2.h5')
db_filepath = os.path.join(data_dir, 'spikes_df.parquet')
# Output directory where the filtered spikes fits files will be written.
output_dir = os.path.join(data_dir, 'filtered')
# Open the data base as a store.
# spikes_db = pd.HDFStore(db_filepath)
spikes_db = pd.read_parquet(db_filepath, engine='pyarrow')
####################################################################################################
# Break out file paths grouped by group numbers out of the database (why did I do the above then?).
# There should be a Pandas' way to extract file paths by same group numbers.
# Look for that later, it's probably using a "groupby" filter or alike. For now, go the Numpy way.
####################################################################################################
npgroups = spikes_db.get('GroupNumber').values
nppaths = spikes_db.get('Path').values
# Filter the unique values of groups (ugroups), and output associated indices (uinds) and counts for each group (ugroupc)
ugroups, uinds, ugroupc = np.unique(npgroups, return_index=True, return_counts=True)

################################################################################################
# Pre-compute the 8-connectivity lookup table. This will be shared across parallel workers.
################################################################################################
# List of relative 2D coordinates for 8-neighbour connectiviy (9-element list). 1st one is the origin pixel.
coords_8nb = np.array([[0, 0], [-1, 0], [-1, -1], [0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1]])
# Array of 2D coordinates for a 4096 x 4096 array. Matrix convention is kept. [rows, cols] = [y-axis, x-axis]
ny, nx = [4096, 4096]
coords_1d = np.arange(nx * ny)
coordy, coordx = np.unravel_index(coords_1d, [ny, nx]) # also possible by raveling a meshgrid() output
coords2d = np.array([coordy, coordx])
# Create the array of 2D coordinates of 8-neighbours associated with each pixel.
# pixel 0 has 8 neighbour + itself, pixel 1 has 8 neighbour + itself, etc...
coords2d_8nb = coords2d[np.newaxis, ...] + coords_8nb[..., np.newaxis]
# Handle off-edges coordinates by clipping to the edges, operation done in-place. Here, square detector assumed. Update
# to per-axis clipping if that ever changes for another instrument.
np.clip(coords2d_8nb, 0, nx-1, out=coords2d_8nb)
# Convert to 1D coordinates.
index_8nb = np.array([coords2d_8nb[i, 0, :] * nx + coords2d_8nb[i, 1, :] for i in range(len(coords_8nb))],
                     dtype='int32', order='C')

# Create output dataframe
spikes_db2 = pd.DataFrame(columns=['GroupNumber', 'Time', 'Path',
                                   'Wavelength', 'Count', 'Coordinates', 'Intensity_1', 'Intensity_2'])

# for group_n in ugroups:
group_n = 0

# timeit -> year 2010:   8 years:
fpaths = get_filepaths(group_n, nppaths, uinds, ugroupc, data_dir)
# Read spikes fits files. They contain 3 columns:
# (1) 1D coordinates, (2) intensity before despiking replacement, (3) intensity after despiking.
# timeit -> year 2010: 4 ms  8 years:
spikes_list = [fitsio.read(path) for path in fpaths]
# timeit -> year 2010: 103 ms  8 years:
group_coords, group_idx, group_counts = accumulate_spikes(spikes_list)
# write_new_spikes_files2(spikes_list, group_coords, group_idx, group_counts, fpaths, hdu_only=False)


spiked_df = pd.DataFrame(group_coords, columns=['X'])

# Create output dataframe
# spikes_db2 = pd.DataFrame({'GroupNumber': group_n,
#                            'Time': spikes_db2.loc[group_n].index,
#                            'Path': spikes_db2.loc[group_n]['Path'],
#                            'Wavelength': spikes_db2.loc[group_n]['Wavelength'],
#                            'Count': group_counts,
#                            'Coordinates', 'Intensity_1', 'Intensity_2'])
