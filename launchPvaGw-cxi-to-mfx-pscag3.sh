#!/bin/bash

# Derive top directory for p4p.gw
TOP=`readlink -f $(dirname $0)`

source $TOP/pcds_setup_py36env.sh

PY_LD_VER=`python get_PY_LD_VER.py`

#echo pythonpathmunge $TOP/python${PY_LD_VER}/${EPICS_HOST_ARCH}
source /reg/g/pcds/setup/pathmunge.sh
pythonpathmunge $TOP/python${PY_LD_VER}/${EPICS_HOST_ARCH}

# Set upstream port and IP addr
# i.e. EPICS_PVA_* settings served by IOC's to PVA clients
US_PORT=5076
# Broadcast addr for 172.21.68.XXX/22
US_ADDR_LIST='172.21.71.255'
# Set downstream port and IP addr
# i.e. EPICS_PVA_* settings used by gateway to serve downstream clients
DS_PORT=5076
DS_ADDR_LIST='172.21.72.251'

echo python -m p4p.gw --server "$DS_ADDR_LIST:$DS_PORT" --cip "$US_ADDR_LIST" --cport $US_PORT --prefix gw:
python -m p4p.gw --server "$DS_ADDR_LIST:$DS_PORT" --cip "$US_ADDR_LIST" --cport $US_PORT --prefix gw:
