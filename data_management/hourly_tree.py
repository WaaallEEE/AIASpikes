from pathlib import Path
import tarfile
import config
from datetime import date, timedelta


if __name__ == "__main__":

    # Define the start and end dates
    start_date = date(config.start_year, config.start_month, config.start_day)
    end_date = date(config.end_year, config.end_month, config.end_day)

    # Generate the list of dates
    current_date = start_date
    date_list = []
    while current_date <= end_date:
        date_list.append(current_date)
        current_date += timedelta(days=1)

    # Extract years, months, and days into separate lists
    years = [d.year for d in date_list]
    months = [d.month for d in date_list]
    days = [d.day for d in date_list]

    # Create the hourly directories for each year
    for y in years:
        for m in months:
            for d in days:
                tar_file = Path(config.tars_dir, f'spikes_{y}_{m:02d}_{d:02d}.tar')
                day_dir = Path(config.tars_dir, f'{y}/{m:02d}/{d:02d}')
                if not day_dir.exists() and tar_file.is_file():
                    print(tar_file)
                    with tarfile.open(tar_file, "r") as tar:
                        tar.extractall(path=config.tars_dir)

                    # Get the extracted file names
                    fpaths = day_dir.glob('*.fits')
                    # Make the directories of each of the 24 hours
                    new_hour_dirs = [Path(day_dir, f'H{h:02d}00') for h in range(24)]
                    _ = [d.mkdir(exist_ok=True) for d in new_hour_dirs]
                    for fp in fpaths:
                        # Get the hour of the file
                        hour_dir = f'H{fp.name[11:13]}00'
                        print(fp.as_posix(), hour_dir)
                        new_path = Path(day_dir, hour_dir, fp.name)
                        print(new_path.as_posix())
                        fp.rename(new_path)

                    # tar_fname = Path(config.tars_dir, f'{y}_{m:02d}_{d:02d}.tar')
                    # with tarfile.open(tar_fname, 'w') as tar:
                    #     tar.add(day_dir, arcname=day_dir.relative_to(*day_dir.parts[:-3]))


