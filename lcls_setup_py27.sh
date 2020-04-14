#!/bin/bash

source $EPICS_SETUP/epicsenv-7.0.3.1-1.0.bash
source $TOOLS/python/go_python2.7.13.bash

PY_LD_VER=2.7

#echo pythonpathmunge $PWD/python${PY_LD_VER}/${EPICS_HOST_ARCH}
#source /reg/g/pcds/setup/pathmunge.sh
pythonpathmunge $PWD/python${PY_LD_VER}/${EPICS_HOST_ARCH}
