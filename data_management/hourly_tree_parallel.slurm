#!/bin/sh

## Give your job a name to distinguish it from other jobs you run.
#SBATCH --job-name=hourly_tree

## General partitions: all-HiPri, bigmem-HiPri   --   (12 hour limit)
##                     all-LoPri, bigmem-LoPri, gpuq  (5 days limit)
## Restricted: CDS_q, CS_q, STATS_q, HH_q, GA_q, ES_q, COS_q  (10 day limit)
#SBATCH --partition=normal

## Separate output and error messages into 2 files.
## NOTE: %u=userID, %x=jobName, %N=nodeID, %j=jobID, %A=arrayID, %a=arrayTaskID
#SBATCH --output=/scratch/%u/slurm/%x-%N-%A-%a.out  # Output file
#SBATCH --error=/scratch/%u/slurm/%x-%N-%A-%a.err   # Error file

## Slurm can send you updates via email
#SBATCH --mail-type=BEGIN,END,FAIL         # ALL,NONE,BEGIN,END,FAIL,REQUEUE,..
#SBATCH --mail-user=rattie@gmu.edu     # Put your GMU email address here

## Specify how much memory your job needs. (2G is the default)
#SBATCH --ntasks=10      # number of cpu allocated per array task
#SBATCH --mem=64G        # Total memory needed per task (units: K,M,G,T)


## Specify how much time your job needs. (default: see partition above)
#SBATCH --time=0-1:00  # Total time needed for job: Days-Hours:Minutes

## Load the relevant modules needed for the job
module load python

## activate conda environment ML
export PYTHONPATH='/home/rattie/dev/AIASpikes/data_management'
export SCRATCHSPIKES='/scratch/rattie/spikes'
## Run your program or script
python hourly_tree_parallel.py
