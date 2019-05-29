# Source this script to create needed environment to build or launch p4p gateway.

source /reg/g/pcds/package/conda/env-miniconda3.sh
conda activate pva-gw
source $SETUP_SITE_TOP/epicsenv-bleeding_edge-7.0.sh 
ldpathmunge /reg/neh/home/bhill/git-wa-neh/base-R7-git/lib/${EPICS_HOST_ARCH}
source $PSPKG_ROOT/etc/add_env_pkg.sh procServ/2.7.0-1.3.0

# The remainder of this script is generic for all SLAC EPICS env
SRC_SCRIPT=$(readlink -f ${BASH_SOURCE[0]})
P4P_TOP=$(dirname $SRC_SCRIPT)
if [ ! -f $P4P_TOP/get_PY_LD_VER.py ]; then
	echo "Please run from a p4p release directory."
	return 1
fi

PY_LD_VER=`python $P4P_TOP/get_PY_LD_VER.py`
pythonpathmunge $P4P_TOP/python${PY_LD_VER}/${EPICS_HOST_ARCH}

if [ ! -f $P4P_TOP/configure/RELEASE.local ]; then
	echo EPICS_BASE=$EPICS_BASE > $P4P_TOP/configure/RELEASE.local
fi
