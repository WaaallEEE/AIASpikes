from pathlib import Path
import os

tars_dir = Path(os.environ['SPIKES'])
start_year = 2010
end_year = 2010
start_month = 5
end_month = 5
start_day = 13
end_day = 13

untar_dir = Path(os.environ['SCRATCH'], 'spikes')
