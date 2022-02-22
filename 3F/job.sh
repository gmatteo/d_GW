#!/bin/bash
#PBS -q main
#PBS -N d_GW
#PBS -l select=128:ncpus=1:mem=4000mb
#PBS -l walltime=12:00:0
#PBS -r y
#PBS -W group_list=crystal
# Load Modules

cd ${PBS_O_WORKDIR} && echo ${PBS_O_WORKDIR} 

source $HOME/modules.sh
export PATH=~/git_repos/abinit_rmms/_build_zenobe-intel-impi-mkl.ac/src/98_main/:$PATH

mpirun -n 128 abinit 3F-2110.files > run.log 2> run.err
