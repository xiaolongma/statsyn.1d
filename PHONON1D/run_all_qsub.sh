#!/bin/tcsh


qsub CEES_QSUB_SCRIPTS/qsub_BMF_EARTHPREM_SPIKE_100km_EXP_noATT_AllP_AMP.sh
sleep 1
qsub CEES_QSUB_SCRIPTS/qsub_BMF_MOON2LAYERS_700km_noATT_AllP_AMP.sh
sleep 1
