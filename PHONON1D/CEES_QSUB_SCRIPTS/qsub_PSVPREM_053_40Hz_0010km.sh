#!/bin/tcsh
#PBS -N PSVPREM_053_40Hz_0010km
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/PSVPREM_053_40Hz_0010km.csh
