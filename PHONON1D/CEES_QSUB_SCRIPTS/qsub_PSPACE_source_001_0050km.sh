#!/bin/tcsh
#PBS -N PSPACE_source_001_0050km
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/PSPACE_source_001_0050km.csh
