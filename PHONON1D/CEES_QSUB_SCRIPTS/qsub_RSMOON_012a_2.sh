#!/bin/tcsh
#PBS -N RSMOON_012a_2
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/RSMOON_012a_2.csh