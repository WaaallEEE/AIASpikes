#!/bin/bash
# tar and ssh, read from text file of symbolic links to circumvent the issue of "argument list too long"
file_simlinks="simlinks.txt"
rm -f $file_simlinks
touch $file_simlinks
rm -rf FITS
mkdir FITS
# Each line of the file has t_obs, wavelength, and the sums path
while read -r t_obs wave file
do
  tobs2=$(echo "$t_obs" | sed 's/:/h/; s/:/m/')
  printf '%s_%04d.spikes.fits\n' "$tobs2" $wave >> $file_simlinks
  ln -s "$file" "$(printf 'FITS/%s_%04d.spikes.fits' "$tobs2" $wave)"
done < "$(printf 'results_show_info_%s.txt' $1)"
echo All symbolic links created
echo taring and scp to dtn1 for "$1"...
# Tar and redirect standard output over ssh to remote server. No need to write a tar file locally.
time tar chf - -C FITS --files-from simlinks.txt | ssh rattie@dtn1.orc.gmu.edu "$(printf 'cat > /groups/SPIKES/downloads/spikes_%s.tar' $1)"

