#!/bin/tcsh
#PBS -N COMPILE_SMOON_013a
#PBS -lmem=12gb,nodes=1:ppn=1
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh ./AVERAGING_SCRIPTS/SMOON_013a_average.csh
