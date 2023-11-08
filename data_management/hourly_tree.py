from pathlib import Path
import os
import tarfile
import config

if __name__ == "__main__":

    years = range(config.start_year, config.end_year + 1)
    months = range(config.start_month, config.end_month + 1)
    days = range(config.start_day, config.end_day + 1)
    # Create the hourly directories for each year
    for y in years:
        for m in months:
            for d in days:
                tar_file = Path(config.spikes_dir, f'{y}_{m:02d}_{d:02d}.tar')
                print(tar_file)
                day_dir = Path(config.untar_dir, f'{y}/{m:02d}/{d:02d}')
                print(day_dir.exists(), tar_file.is_file())
                if not day_dir.exists() and tar_file.is_file():
                    with tarfile.open(tar_file, "r") as tar:
                        tar.extractall(path=config.untar_dir)
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

                    tar_fname = Path(config.untar_dir, f'{y}_{m:02d}_{d:02d}.tar')
                    with tarfile.open(tar_fname, 'w') as tar:
                        tar.add(day_dir, arcname=day_dir.relative_to(*day_dir.parts[:-3]))


