#!/bin/tcsh
#PBS -N RSMOON_002a_0000km
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/RSMOON_002a_0000km.csh