#!/bin/tcsh
#PBS -N PSVPREM_065_005_40Hz_0050km
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/PSVPREM_065_005_40Hz_0050km.csh
