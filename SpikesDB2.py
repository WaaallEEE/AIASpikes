import os
from pathlib import Path
import pandas as pd
import time


class SpikesDB:

    def __init__(self, source_file_list, datadir, df_name):
        self.flist = Path(source_file_list)
        self.datadir = datadir
        self.dir = os.path.abspath(self.flist.parent)
        self.df = None
        self.fnames = None
        self.df_name = df_name

    def db_gen(self):

        # Time in JD | Time in YMD | Wavelength | file path | file size

        t1 = time.time()
        self.df = pd.read_csv(self.flist, names=['Path'], dtype=object)
        self.df.sort_values(by=['Path'], inplace=True)
        self.df.reset_index(inplace=True, drop=True)
        self.fnames = self.df['Path'].apply(lambda s: s.split('/')[-1])
        self.filesize_gen()
        self.time_gen()
        self.wave_gen()
        self.group_gen()
        # remove empty files
        self.df.drop(self.df[self.df['Size'] < 100].index, inplace=True)
        self.filter_incomplete_groups()

        parquet_f = os.path.join(self.dir, self.df_name)
        self.df.to_parquet(parquet_f, engine='pyarrow', compression=None)
        print('Spikes database file stored in: ', parquet_f)

        t2 = time.time()
        dt1 = t2 - t1
        print('wall clock total time: ', dt1)

    def filesize_gen(self):
        print('Getting file sizes...')
        t1 = time.time()
        self.df['Size'] = self.df['Path'].apply(lambda file: os.path.getsize(os.path.join(self.datadir, file)))
        t2 = time.time()
        dt1 = t2 - t1
        print('wall clock time elapsed: ', dt1)

    def time_gen(self):
        print('Generating time stamps with 60s-rolling fix...')
        t1 = time.time()
        temp_times = self.fnames.apply(lambda f: pd.Timestamp(f[0:17] + '00' + f[19:23]))
        tdeltas = self.fnames.apply(lambda f: pd.Timedelta(int(f[17:19]), unit='s'))
        self.df['Time'] = temp_times + tdeltas
        t2 = time.time()
        dt1 = t2 - t1
        print('wall clock time elapsed: ', dt1)

    def wave_gen(self):
        t1 = time.time()
        print('Populating Wavelength...')
        self.df['Wavelength'] = self.fnames.apply(lambda f: int(f.split('_')[-1][0:4]))
        t2 = time.time()
        dt1 = t2 - t1
        print('wall clock time elapsed: ', dt1)

    def group_gen(self):
        print('Generating GroupNumber...')
        t1 = time.time()
        self.df['GroupNumber'] = self.df.groupby(pd.Grouper(key='Time', freq='12s')).ngroup()
        t2 = time.time()
        dt1 = t2 - t1
        print('wall clock time elapsed: ', dt1)

    def filter_incomplete_groups(self):
        print('removing incomplete groups')
        t1 = time.time()
        self.df.drop_duplicates(['GroupNumber', 'Wavelength'], inplace=True)
        mask_incomplete = self.df.groupby('GroupNumber')['Wavelength'].count() != 7
        incomplete_groups = mask_incomplete[mask_incomplete].index.values
        incomplete_groups_idx = self.df.loc[self.df['GroupNumber'].isin(incomplete_groups)].index
        self.df.drop(incomplete_groups_idx, inplace=True)
        t2 = time.time()
        dt1 = t2 - t1
        print('wall clock time elapsed: ', dt1)


