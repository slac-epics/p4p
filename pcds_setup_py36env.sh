#!/bin/bash

source /reg/g/pcds/package/conda/py36env.sh
conda activate pva-gw
source /reg/g/pcds/setup/epicsenv-bleeding_edge-7.0.sh 

PY_LD_VER=`python get_PY_LD_VER.py`

#echo pythonpathmunge $PWD/python${PY_LD_VER}/${EPICS_HOST_ARCH}
#source /reg/g/pcds/setup/pathmunge.sh
pythonpathmunge $PWD/python${PY_LD_VER}/${EPICS_HOST_ARCH}

