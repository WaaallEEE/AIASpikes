#!/bin/bash
show_info -qP 'aia.lev1_euv_12s[2011.01.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.01.31/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_01_31.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.02.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_02_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.03.31/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_03_31.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.04.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_04_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.05.31/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_05_31.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.06.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_06_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.07.31/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_07_31.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.08.31/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_08_31.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.09.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_09_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.10.31/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_10_31.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.11.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_11_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.01/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_01.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.02/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_02.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.03/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_03.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.04/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_04.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.05/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_05.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.06/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_06.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.07/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_07.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.08/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_08.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.09/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_09.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.10/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_10.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.11/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_11.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.12/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_12.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.13/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_13.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.14/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_14.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.15/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_15.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.16/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_16.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.17/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_17.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.18/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_18.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.19/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_19.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.20/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_20.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.21/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_21.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.22/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_22.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.23/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_23.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.24/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_24.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.25/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_25.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.26/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_26.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.27/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_27.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.28/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_28.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.29/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_29.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.30/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_30.tar"
show_info -qP 'aia.lev1_euv_12s[2011.12.31/1d][?QUALITY>=0?]' key=T_OBS,WAVELNTH seg=spikes | while read -r t_obs wave file; do ln -s "$file" "$(printf '%s_%04d.spikes.fits' $t_obs $wave)"; done
tar chf - ./*.fits | ssh rattie@hopper "cat > /groups/SPIKES/tmp/spikes_2011_12_31.tar"
