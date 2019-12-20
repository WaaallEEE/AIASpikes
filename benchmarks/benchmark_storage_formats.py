# from https://towardsdatascience.com/the-best-format-to-save-pandas-data-414dca023e0d

import pandas as pd
import numpy as np
import os
import time

def generate_dataset(n_rows, num_count, cat_count, max_nan=0.1, max_cat_size=100):
    """Randomly generate datasets with numerical and categorical features.

    The numerical features are taken from the normal distribution X ~ N(0, 1).
    The categorical features are generated as random uuid4 strings with
    cardinality C where 2 <= C <= max_cat_size.

    Also, a max_nan proportion of both numerical and categorical features is replaces
    with NaN values.
    """
    dataset, types = {}, {}

    def generate_categories():
        from uuid import uuid4
        category_size = np.random.randint(2, max_cat_size)
        return [str(uuid4()) for _ in range(category_size)]

    for col in range(num_count):
        name = f'n{col}'
        values = np.random.normal(0, 1, n_rows)
        nan_cnt = np.random.randint(1, int(max_nan * n_rows))
        index = np.random.choice(n_rows, nan_cnt, replace=False)
        values[index] = np.nan
        dataset[name] = values
        types[name] = 'float32'

    for col in range(cat_count):
        name = f'c{col}'
        cats = generate_categories()
        values = np.array(np.random.choice(cats, n_rows, replace=True), dtype=object)
        nan_cnt = np.random.randint(1, int(max_nan * n_rows))
        index = np.random.choice(n_rows, nan_cnt, replace=False)
        values[index] = np.nan
        dataset[name] = values
        types[name] = 'object'

    return pd.DataFrame(dataset), types


df, types = generate_dataset(130000000, 1, 4)
datadir = os.path.join(os.environ['SPIKESDATA'], 'benchmark')
parquetf = os.path.join(datadir, 'df.parquet')
picklef = os.path.join(datadir, 'df.pkl')

df.to_parquet(parquetf)
df.to_pickle(picklef)

t1 = time.time()
df1 = pd.read_parquet(parquetf)
t2 = time.time()
dt1 = t2 - t1
print('wall clock time elapsed for parquet: ', dt1)

df2 = pd.read_pickle(picklef)
t3 = time.time()
dt2 = t3 - t2
print('wall clock time elapsed for pickle: ', dt2)

# %timeit df2 = pd.read_parquet(parquetf)
# %timeit df3 = pd.read_pickle(picklef)
