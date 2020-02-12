import os
import pandas as pd
import fitsio
import time
import ray



@ray.remote
def process_group(path_df, group_n):
    fpaths = path_df['Path'].loc[group_n]
    spikes_list = [fitsio.read(os.path.join(os.environ['SPIKESDATA'], f)) for f in fpaths]
    spikes_w = spikes_list[0]
    nb_pixels = len(spikes_w)
    return nb_pixels


if __name__ == '__main__':


    ncpus = 60
    ray.init(num_cpus=ncpus)

    # Create data for lookup from the child processes.

    spikes_df = pd.read_parquet(os.path.join(os.environ['SPIKESDATA'], 'spikes_df_2010_filtered.parquet'), engine='pyarrow')
    spikes_df2 = spikes_df.set_index(['GroupNumber', 'Time'])
    tintervals = pd.interval_range(start=pd.Timestamp('2010-05-13 00:00:00', tz='UTC'), end=pd.Timestamp('2011-01-01 00:00:00', tz='UTC'), freq='D', closed='left')

    tinterval = tintervals[0]
    groups = spikes_df['GroupNumber'].loc[(spikes_df['Time'] >= tinterval.left) & (spikes_df['Time'] < tinterval.right)].unique()

    fpaths = [spikes_df2['Path'].loc[group_n] for group_n in groups]

    spikes_df2_id = ray.put(spikes_df2)
    ray.get([process_group.remote(spikes_df2_id, group_n) for group_n in groups])
