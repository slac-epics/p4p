#!/bin/bash

source /afs/slac/g/lcls/epics/setup/epicsenv-7.0.2-1.0.bash
source /afs/slac/g/lcls/package/python/3.6.1/rhel6-x86_64/use.bash

PY_LD_VER=3.6m

#echo pythonpathmunge $PWD/python${PY_LD_VER}/${EPICS_HOST_ARCH}
#source /reg/g/pcds/setup/pathmunge.sh
pythonpathmunge $PWD/python${PY_LD_VER}/${EPICS_HOST_ARCH}
