import os
from pathlib import Path
import fitsio
from multiprocessing import Pool
import time
import pandas as pd

tstart = time.time()
parent_dir = os.environ['SPIKESDATA']
flist = os.path.join(parent_dir, 'file_list_2010.txt')
print('Creating dataframe from list in text file at ', flist)
filedf = pd.read_csv(flist, header=0, names=['path_str'])
filedf.sort_values(by=['path_str'], inplace=True)
filedf.reset_index(inplace=True, drop=True)
print('Extracting filenames...')
filedf['filename'] = filedf['path_str'].apply(lambda s: Path(s).name)
print('Extracting seconds...')
filedf['secs'] = filedf['filename'].apply(lambda stem: int(stem[17:19]))
# Regex alternatives to extract the seconds field
# stems2.str.extract(r'[0-9]*-[0-9]*-[0-9]*T[0-9]*:[0-9]*:([0-9]*)')
# stems2.str.extract(r'.*T[0-9]*:[0-9]*:([0-9]*)')
print('Getting temporary filenames (00 seconds)...')
temp_stems = filedf['filename'].apply(lambda name: name[0:17] + '00' + name[19:])
print('Creating corrected Timestamp items...')
times = temp_stems.apply(lambda stem: pd.Timestamp(stem[0:-17]))
tdeltas = filedf['secs'].apply(lambda sec: pd.Timedelta(sec, unit='s'))
filedf['timestamp'] = times + tdeltas

# And where is this happening?
stems60 = filedf['filename'].loc[filedf['secs'] >= 60]
print('number of files : ', len(filedf))
print('number of 60s anomalies : ', len(stems60))

stems60.to_csv(os.path.join(parent_dir, 'minutes_60_anomaly.csv'), header=False, index=False)
filedf.to_hdf(os.path.join(parent_dir, 'spikes_df_debug60.h5'), key='filedf', mode='w')

telapsed1 = (time.time() - tstart) / 60
print('elapsed time : {:1.1f} min'.format(telapsed1))
