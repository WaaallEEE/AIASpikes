import os
from SpikesDB2 import SpikesDB

# Text file containing all file paths
datadir = os.environ['SPIKESDATA']
flist = os.path.join(datadir, 'file_list.txt')

spikes = SpikesDB(flist, datadir, 'spikes_df.parquet')
spikes.db_gen()
