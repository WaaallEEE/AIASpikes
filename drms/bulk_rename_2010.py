import logging
from pathlib import Path
import glob
from datetime import datetime

logging.basicConfig(filename='bulk_rename.log', encoding='utf-8', level=logging.DEBUG)

# Build directory structure
spikes_dir = '/mnt/data3/SDO/AIA/spikes/'
years = list(range(2010, 2011))
months = list(range(5, 13))

for year in years:
    yearstr = str(year)
    print(yearstr)
    for month in months:
        monthstr = f'{month:02d}'
        print(monthstr)
        for daydir in sorted(Path(spikes_dir, yearstr, monthstr).iterdir()):
            print(daydir)
            files = sorted(daydir.glob('*.fits'))
            for pf in files:
                print(pf)
                print(pf.stem[13])
                if pf.stem[13] == ':':
                    if pf.stem[17:19] == '60':
                        logging.info(f'60-second anomaly: {pf.name}')
                    newstem = pf.stem[:13] + 'h' + pf.stem[14:16] + 'm' + pf.stem[17:]
                    print(pf.with_stem(newstem))
                    pf.rename(pf.with_stem(newstem))

