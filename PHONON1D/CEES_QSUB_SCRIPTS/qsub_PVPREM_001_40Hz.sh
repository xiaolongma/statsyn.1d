#!/bin/tcsh
#PBS -N PVPREM_001_40Hz
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/PVPREM_001_40Hz.csh
