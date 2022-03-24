#!/bin/bash -l
#SBATCH --job-name=6H
#SBATCH --account=project_465000061
#SBATCH --time=24:00:00
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=4000
####SBATCH --nodes=1
####SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=1
###SBATCH --partition=standard
#SBATCH --partition=small

source ~/git_repos/abinit/_build_gnu/modules.sh
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
srun abinit <  6H-2110.files > run.log 2> run.err
