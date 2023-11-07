from pathlib import Path
import os
import tarfile

if __name__ == "__main__":

    spikes_dir = Path(os.environ['SPIKES'])
    years = range(2010, 2018)
    months = range(1, 13)
    days = range(1, 31)
    # Create the hourly directories for each year
    for y in years:
        for m in months:
            for d in days:
                tar_file = Path(spikes_dir, 'tars', f'{y}_{m:02d}_{d:02d}.tar')
                day_dir = Path(spikes_dir, 'tars', f'{y}/{m:02d}/{d:02d}')
                if not day_dir.exists() and tar_file.is_file():
                    with tarfile.open(tar_file, "r") as tar:
                        tar.extractall(path=tar_file.parent)
                        # Get the list of exctracted fits files recursively

                    # Get the extracted file names
                    fpaths = day_dir.glob('*.fits')

                    # Make the directories of each of the 24 hours
                    new_hour_dirs = [Path(day_dir, f'H{h:02d}00') for h in range(24)]
                    _ = [d.mkdir(exist_ok=True) for d in new_hour_dirs]
                    for fp in fpaths:
                        hour_dir = f'H{fp.name[11:13]}00'
                        print(fp.as_posix(), hour_dir)
                        new_path = Path(day_dir, hour_dir, fp.name)
                        print(new_path.as_posix())
                        fp.rename(new_path)


