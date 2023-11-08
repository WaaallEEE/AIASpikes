from pathlib import Path
import os

spikes_dir = Path(os.environ['SPIKES'], 'tars')
start_year = 2010
end_year = 2011
start_month = 5
end_month = 5
start_day = 13
end_day = 14

untar_dir = Path(os.environ['SCRATCH'], 'spikes')
