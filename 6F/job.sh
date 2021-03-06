#!/bin/bash -l
#SBATCH --job-name=5F
#SBATCH --account=project_465000061
#SBATCH --time=24:00:00
#SBATCH --nodes=4
###SBATCH --ntasks-per-node=128
###SBATCH --mem-per-cpu=2000
###SBATCH --ntasks-per-node=32
###SBATCH --mem-per-cpu=8000
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=16000
#SBATCH --cpus-per-task=1
###SBATCH --partition=standard
#SBATCH --partition=small

source ~/git_repos/abinit/_build_gnu/modules.sh
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
srun abinit <  6F-2110.files > run.log 2> run.err
