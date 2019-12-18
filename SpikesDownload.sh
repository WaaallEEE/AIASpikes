#!/bin/bash

# Download script for fetching AIA spikes files from NSO
# Need a valid SSH key; contact A. Davey for more info. 

ssh -p 55000 nso@jsocport.stanford.edu ls -la /surge28/spikes-tars

rsync -arv --progress --partial --exclude 'spikes-tar.log.txt' --exclude '\.*' -e "ssh -p 55000" nso@jsocport.stanford.edu:/surge28/spikes-tars .

