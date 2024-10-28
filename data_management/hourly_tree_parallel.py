import os
import tarfile
from concurrent.futures import ThreadPoolExecutor
from multiprocessing import Pool
from pathlib import Path
from datetime import date, timedelta


def extract_tar(tar_file, destination):
    """Extract a tar file to the specified destination."""
    with tarfile.open(tar_file, "r") as tar:
        tar.extractall(path=destination)


def move_file_to_hour_dir(fp, day_dir):
    """Move a file to its corresponding hour directory based on the file's name."""
    hour_dir = f'H{fp.name[11:13]}00'  # Extract the hour from the file name
    new_path = Path(day_dir, hour_dir, fp.name)
    fp.rename(new_path)
    return new_path

def count_files_in_tar(tar_path):
    count = 0
    with tarfile.open(tar_path, 'r') as tar:
        for member in tar.getmembers():
            if member.isfile():  # Only count files, skip directories
                count += 1
    return count


def untar_and_move_files(y, m, d, tars_dir):
    """Untar files for a given year, month, and day, and move the extracted files to hourly directories."""
    tar_file = Path(tars_dir, f'spikes_{y}_{m:02d}_{d:02d}.tar')
    day_dir = Path(tars_dir, f'{y}/{m:02d}/{d:02d}')

    if day_dir.exists():
        print(f"Day dir exists: {day_dir.as_posix()}")
        # Reprocess if the total number of files does not match the ones in the tar file
        nfiles_tar = count_files_in_tar(tar_file)
        nfiles_dir = sum(len(files) for _, _, files in os.walk(day_dir))
        if nfiles_dir < nfiles_tar:
            print('reprocessing day dir')
            fpaths = list(day_dir.glob('*.fits'))  # Convert generator to list

            if fpaths:
                # Move files to hourly directories (I/O-bound, done with threads)
                with ThreadPoolExecutor() as executor:
                    executor.map(move_file_to_hour_dir, fpaths, [day_dir] * len(fpaths))
            else:
                print(f"No FITS files found in {day_dir}")

    elif not day_dir.exists() and tar_file.is_file():
        print(f"Processing: {tar_file}")
        # Untar the file (CPU-bound, so this runs in a separate process)
        extract_tar(tar_file, tars_dir)

        # Make the directories for each of the 24 hours
        new_hour_dirs = [Path(day_dir, f'H{h:02d}00') for h in range(24)]
        for d in new_hour_dirs:
            d.mkdir(exist_ok=True)

        # Get the extracted FITS files as a list
        fpaths = list(day_dir.glob('*.fits'))  # Convert generator to list

        if fpaths:
            # Move files to hourly directories (I/O-bound, done with threads)
            with ThreadPoolExecutor() as executor:
                executor.map(move_file_to_hour_dir, fpaths, [day_dir] * len(fpaths))
        else:
            print(f"No FITS files found in {day_dir}")


def parallel_process_tar_files(years, months, days, tars_dir, num_workers):
    """Run the untarring and moving operations in parallel using multiprocessing."""
    # Use multiprocessing to parallelize untar and move tasks
    with Pool(processes=num_workers) as pool:
        tasks = [(y, m, d, tars_dir) for y in years for m in months for d in days]
        pool.starmap(untar_and_move_files, tasks)


if __name__ == "__main__":
    # Directory containing the tar files
    tars_dir = Path(os.environ['SCRATCHSPIKES'])

    # Define the start and end dates
    start_year = 2010
    end_year = 2010
    start_month = 6
    end_month = 12
    start_day = 1
    end_day = 31

    # Number of worker processes to use, depending on server's capacity
    num_workers = 10

    # Generate the list of dates
    start_date = date(start_year, start_month, start_day)
    end_date = date(end_year, end_month, end_day)

    date_list = []
    current_date = start_date
    while current_date <= end_date:
        date_list.append(current_date)
        current_date += timedelta(days=1)

    # Extract years, months, and days into separate lists
    years = [d.year for d in date_list]
    months = [d.month for d in date_list]
    days = [d.day for d in date_list]

    # Run the parallel untarring and file moving
    parallel_process_tar_files(years, months, days, tars_dir, num_workers)
