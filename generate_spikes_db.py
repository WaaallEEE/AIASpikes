import os
from SpikesDB2 import SpikesDB
import time

# Text file containing all file paths (relative)
datadir = os.environ['SPIKESDATA']
# Source file created with find command
# e.g.: find 2010/07/12 -type f ! -name .DS_Store > file_list_2010.txt
source_file_list = 'file_list_2010.txt'
spikes = SpikesDB(source_file_list, datadir, 'spikes_df_2010.parquet')
profile_tstart = time.time()
spikes.db_gen()
etime = time.time() - profile_tstart
print(etime)
