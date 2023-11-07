# Make script to download spikes
from datetime import datetime
import pandas as pd
from pathlib import Path


def tar_days_in_month(monthdir, spikes_dir, output_dir, skip_existing=True):
    for daydir in sorted(monthdir.iterdir()):
        echostr = f"""echo "processing {daydir.as_posix()}"\n"""
        subdir = Path(*daydir.parts[6:]).as_posix()
        tarfile = Path(output_dir, f'{yeardir.name}_{monthdir.name}_{daydir.name}.tar')
        if tarfile.exists() and skip_existing:
            continue
        cstr = f"""time tar cf {tarfile.as_posix()} -C {spikes_dir.as_posix()} {subdir}\n"""
        f.write(echostr)
        f.write(cstr)


if __name__ == "__main__":

    spikes_dir = Path('/mnt/data3/SDO/AIA/spikes/')
    output_dir = Path('/mnt/data2/SDO/AIA/spikes/tars')
    year = 2010
    months = list(range(1, 13))
    skip_existing = True

    with open('tar_local.sh', 'w') as f:
        f.write('#!/bin/bash\n')
        yeardir = Path(spikes_dir, str(year))
        for monthdir in sorted(yeardir.iterdir()):
            tar_days_in_month(monthdir, spikes_dir, output_dir)
