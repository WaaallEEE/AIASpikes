import os
import pandas as pd
import time


df = pd.read_parquet(os.path.join(os.environ['SPIKESDATA'], 'spikes_df_2010.parquet'), engine='pyarrow')
print('original number of files: ', len(df))
t1 = time.time()
df.drop_duplicates(['GroupNumber', 'Wavelength'], inplace=True)
mask_incomplete = df.groupby('GroupNumber')['Wavelength'].count() != 7
incomplete_groups = mask_incomplete[mask_incomplete].index.values
incomplete_groups_idx = df.loc[df['GroupNumber'].isin(incomplete_groups)].index
new_df = df.drop(incomplete_groups_idx)
wall_time = (time.time() - t1)
print('number of files in complete groups: ', len(new_df))
# Write new dataframe to parquet file
new_df.to_parquet(os.path.join(os.environ['SPIKESDATA'], 'spikes_df_2010_filtered.parquet'),
                  engine='pyarrow', compression=None)

print('Wall time (s): ', wall_time)


