#!/bin/tcsh
#PBS -N PSEARTH_SS6_40Hz_1000km
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/PSEARTH_SS6_40Hz_1000km.csh
