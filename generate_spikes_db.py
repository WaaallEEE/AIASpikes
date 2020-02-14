import os
from SpikesDB2 import SpikesDB

# Text file containing all file paths
datadir = os.environ['SPIKESDATA']
flist = os.path.join(datadir, 'file_list_2010.txt')
spikes = SpikesDB(flist, datadir, 'spikes_df_2010.parquet')
spikes.db_gen()
