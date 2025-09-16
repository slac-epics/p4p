#!/usr/bin/env bash

if ! conda env list | grep p4p-builder > /dev/null ; then
   conda create -n p4p-builder python=3.12 cython numpy
fi
conda activate p4p-builder
