import os
from pathlib import Path
import pandas as pd
import time
import fastparquet

parent_dir = os.environ['SPIKESDATA']

tstart = time.time()
flist = os.path.join(parent_dir, 'file_list.txt')
print('Creating dataframe from list in text file at ', flist)
df = pd.read_csv(flist, names=['path_str'], dtype=object)
time1 = time.time()
etime1 = time1 - tstart
print('csv read time: ', etime1)
print('Sorting list of filenames...')
df.sort_values(by=['path_str'], inplace=True)
df.reset_index(inplace=True, drop=True)
time2 = time.time()
etime2 = time2 - time1
print('elapsed time: ', etime2)
print('Extracting filenames...')
df['filename'] = df['path_str'].apply(lambda s: Path(s).name)
time3 = time.time()
etime3 = time3 - time2
print('elapsed time: ', etime3)
print('Extracting seconds...')
df['secs'] = df['filename'].apply(lambda stem: int(stem[17:19]))
time4 = time.time()
etime4 = time4 - time3
print('elapsed time: ', etime4)
# Regex alternatives to extract the seconds field
# stems2.str.extract(r'[0-9]*-[0-9]*-[0-9]*T[0-9]*:[0-9]*:([0-9]*)')
# stems2.str.extract(r'.*T[0-9]*:[0-9]*:([0-9][)')

print('Getting temporary filenames (00 seconds)...')
temp_stems = df['filename'].apply(lambda name: name[0:17] + '00' + name[19:])
print('Creating corrected Timestamp items...')
times = temp_stems.apply(lambda stem: pd.Timestamp(stem[0:-17]))
tdeltas = df['secs'].apply(lambda sec: pd.Timedelta(sec, unit='s'))
df['timestamp'] = times + tdeltas
# # And where is this happening?
# stems60 = df['filename'].loc[df['secs'] >= 60]
# print('number of files : ', len(df))
# print('number of 60s anomalies : ', len(stems60))
# telapsed1 = (time.time() - tstart) / 60
# print('elapsed time : {:1.1f} min'.format(telapsed1))
# stems60.to_csv(os.path.join(parent_dir, 'minutes_60_anomaly.csv'), header=False, index=False)


# Saving to HDF is a no go due to string format and large size of the dataframe
# See: https://stackoverflow.com/questions/57078803/overflowerror-while-saving-large-pandas-df-to-hdf
# df.to_hdf(os.path.join(parent_dir, 'spikes_df_debug60.h5'), key='df', mode='w')

parquet_f = os.path.join(parent_dir, 'spikes_df.parquet')
pickle_f = os.path.join(parent_dir, 'spikes_df.pkl')

df.to_parquet(parquet_f, engine='pyarrow', compression=None)
df.to_pickle(pickle_f)

t1 = time.time()
parquet_df = pd.read_parquet(parquet_f, engine='pyarrow')
t2 = time.time()
dt1 = t2 - t1
print('wall clock time elapsed for parquet: ', dt1)

t1 = time.time()
pickle_df = pd.read_pickle(pickle_f)
t2 = time.time()
dt2 = t2 - t1
print('wall clock time elapsed for pickle: ', dt2)

