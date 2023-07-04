# Make script to download spikes
from datetime import datetime
import pandas as pd

# start date
start_date = datetime.strptime("2019-02-25", "%Y-%m-%d")
end_date = datetime.strptime("2022-12-31", "%Y-%m-%d")


date_list = pd.date_range(start_date, end_date, freq='D')

with open('spikes_download_script.sh', 'w') as f:
    f.write('#!/bin/bash\n')
    # if you want dates in string format then convert it into string
    for d in date_list:
        str1 = d.strftime("%Y/%m/%d")
        str2 = d.strftime("%Y_%m_%d")
        # print(str1, str2)

        command_str = f'ssh nso "tar cf - -C /internalRaid/SPIKES/ {str1}" ' \
                      f'> /groups/SPIKES/downloads/spikes_{str2}.tar\n'

        f.write(f'echo "Downloading {str1}"\n')
        f.write(command_str)


print('done')

