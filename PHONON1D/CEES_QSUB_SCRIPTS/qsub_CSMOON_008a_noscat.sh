#!/bin/tcsh
#PBS -N CSMOON_008a_noscat
#PBS -l nodes=1:ppn=16
#PBS -q jfl
#PBS -V
cd $PBS_O_WORKDIR

csh SCRIPTS_CEES/CSMOON_008a_noscat.csh
