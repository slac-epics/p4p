#!/usr/bin/env python
"""
Determine and print python LDVERSION.
Needed to set PYTHONPATH to include a path like:
$TOP/python${PY_LD_VER}/${EPICS_HOST_ARCH}
"""

from __future__ import print_function
from distutils.sysconfig import get_config_var, get_python_inc

ldver = get_config_var('LDVERSION')
if ldver is None:
    ldver = get_config_var('VERSION')
    if get_config_var('Py_DEBUG'):
        ldver = ldver+'_d'
print(ldver)

