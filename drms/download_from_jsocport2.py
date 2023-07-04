# Make script to download spikes
from datetime import datetime
import pandas as pd

# start date
start_date = datetime.strptime("2011-01-01", "%Y-%m-%d")
end_date = datetime.strptime("2011-12-31", "%Y-%m-%d")

date_list = pd.date_range(start_date, end_date, freq='D')

with open('download_show_info_script.sh', 'w') as f:
    f.write('#!/bin/bash\n')
    # if you want dates in string format then convert it into string
    for d in date_list:
        date1 = d.strftime("%Y.%m.%d")
        date2 = d.strftime("%Y_%m_%d")

        show_info_str = f"""show_info -qP 'aia.lev1_euv_12s[{date1}/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | """ \
                        f"""while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done\n"""
        tar_string = f"""tar ch - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_{date2}.tar"\n"""

        f.write(show_info_str)
        f.write(tar_string)

print('done')

