#!/bin/bash
show_info -qP 'aia.lev1_euv_12s[2011.01.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read t_obs wave file; do ln -s $file $(printf "%s_%04d.spikes.fits" $t_obs $wave); done
tar chf - *.fits | ssh rattie@hopper "cat > spikes_2011_01_01.tar"
