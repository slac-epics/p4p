#!/bin/bash

# Derive top directory for p4p.gw
SRC_SCRIPT=$(readlink -f ${BASH_SOURCE[0]})
P4P_TOP=$(dirname $SRC_SCRIPT)

source $P4P_TOP/pcds_setup_py36env.sh

# Set EPICS_PVA_* env variables before running this script
# EPICS_PVAS_INTF_ADDR_LIST

source /reg/g/pcds/gateway/scripts/epicscagp

echo python -m p4p.gw --server "$DEV_IF4" --cip "$TST_BC $XCS_BC" --prefix PVA:GW:TST:
python -m p4p.gw --server "$DEV_IF4" --cip "$TST_BC $XCS_BC" --prefix PVA:GW:TST:
