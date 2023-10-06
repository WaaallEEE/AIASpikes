import os
from SpikesDB2 import SpikesDB
import time

# Text file containing all file paths (relative)
datadir = os.environ['SPIKESDATA']
source_file_list = 'file_list_2018.txt'
spikes = SpikesDB(source_file_list, datadir, 'spikes_df_2018.parquet')
profile_tstart = time.time()
spikes.db_gen()
etime = time.time() - profile_tstart
print(etime)
