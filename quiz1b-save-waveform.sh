#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1      # number of processors per task
#SBATCH -J "save-waveform"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o save-waveform.%N.%j.out # STDOUT
#SBATCH -e save-waveform.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import time; \
pyh.Waveform(saveLevel=1);
print(time.localtime());"
