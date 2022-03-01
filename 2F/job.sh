#!/bin/bash

#SBATCH --partition=batch
#SBATCH --job-name=2F
#SBATCH --ntasks=96
#SBATCH --mem-per-cpu=8000
#SBATCH --time=0-16:0:0
#SBATCH --output=queue.qout
#SBATCH --error=queue.qerr

# OpenMp Environment
export OMP_NUM_THREADS=1

# Load Modules
source $HOME/git_repos/abinit_rmms/_intel/modules.sh
export PATH=$HOME/git_repos/abinit_rmms/_intel/src/98_main/:$PATH

mpirun -n ${SLURM_NTASKS} abinit < 2F-2110.files > run.log 2> run.err
