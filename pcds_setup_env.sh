#!/bin/bash

# Common directories
source /cds/group/pcds/pyps/config/common_dirs.sh

# Conda setup
source $PACKAGE_SITE_TOP/conda/env-miniconda3.sh
conda activate pva-gw

# EPICS setup
source $SETUP_SITE_TOP/epicsenv-7.0.3.1-2.0.sh

this_script=`readlink -f ${BASH_SOURCE[0]}`
P4P_TOP=`readlink -f $(dirname $this_script)`

# Add p4p to python path
PY_LD_VER=`python $P4P_TOP/get_PY_LD_VER.py`
pythonpathmunge $P4P_TOP/python${PY_LD_VER}/${EPICS_HOST_ARCH}

