#!/bin/bash

#SBATCH --partition=batch
#SBATCH --job-name=d_gw
#SBATCH --ntasks=96
#SBATCH --mem-per-cpu=4000
#SBATCH --time=0-12:0:0
#SBATCH --output=queue.qout
#SBATCH --error=queue.qerr

# OpenMp Environment
export OMP_NUM_THREADS=1

# Load Modules
source $HOME/git_repos/abinit_rmms/_intel/modules.sh
export PATH=$HOME/git_repos/abinit_rmms/_intel/src/98_main/:$PATH

mpirun -n ${SLURM_NTASKS} abinit < 1F-2110_gw.files > run.log 2> run.err
