#!/bin/bash
# Install local wheels to a virtual environment,
# making sure any git-based package is still taken from the wheels,
# not from its source repo.

BASEDIR=$(dirname $0)
WHEELSDIR="${BASEDIR}/wheelhouse"
ls "${WHEELSDIR}"/*.whl $1 | while read x
do
    pip install --use-wheel --no-index --find-links="${WHEELSDIR}" $x
done
