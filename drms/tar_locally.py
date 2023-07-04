# Make script to download spikes
from datetime import datetime
import pandas as pd
from pathlib import Path

# Build directory structure
spikes_dir = Path('/mnt/data3/SDO/AIA/spikes/')
years = list(range(2018, 2023))
months = list(range(1, 13))
skip_existing = True

#TODO find the missing days

with open('tar_local.sh', 'w') as f:
    f.write('#!/bin/bash\n')
    for year in years:
        yeardir = Path(spikes_dir, str(year))
        for monthdir in sorted(yeardir.iterdir()):
            for daydir in sorted(monthdir.iterdir()):
                echostr = f"""echo "processing {daydir.as_posix()}"\n"""
                subdir = Path(*daydir.parts[6:]).as_posix()
                tarfile = Path(spikes_dir, 'tars', f'{yeardir.name}_{monthdir.name}_{daydir.name}.tar')
                if tarfile.exists() and skip_existing:
                    continue
                cstr = f"""tar cf {tarfile.as_posix()} -C {spikes_dir.as_posix()} {subdir}\n"""
                f.write(echostr)
                f.write(cstr)
