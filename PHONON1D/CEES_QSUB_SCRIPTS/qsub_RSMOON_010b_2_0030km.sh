#!/bin/tcsh
#PBS -N RSMOON_010b_2_0030km
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/RSMOON_010b_2_0030km.csh
