# Make script to download spikes
from datetime import datetime
import pandas as pd

# start date
start_date = datetime.strptime("2012-01-01", "%Y-%m-%d")
end_date = datetime.strptime("2018-03-15", "%Y-%m-%d")

date_list = pd.date_range(start_date, end_date, freq='D')

with open('download_show_info_script2.sh', 'w') as f:
    f.write('#!/bin/bash\n')
    # if you want dates in string format then convert it into string
    for d in date_list:
        date1 = d.strftime("%Y.%m.%d")
        date2 = d.strftime("%Y_%m_%d")

        output_file = f'results_show_info_{date2}.txt'
        show_info_str = f"""show_info -qP 'aia.lev1_euv_12s[{date1}/1d][?QUALITY>=0?][?WAVELNTH!=1600?][?WAVELNTH!=1700?][?WAVELNTH!=4500?]' key=T_OBS,WAVELNTH seg=spikes > {output_file}\n"""
        create_link_tar_str = f"""bash tar_ssh_symbolic_link.sh {date2}\n"""

        f.write(show_info_str)
        f.write(create_link_tar_str)

print('done')

