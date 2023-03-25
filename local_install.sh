#!/bin/bash

# version=`git describe --tags --abbrev=0`
commit=`git rev-parse --short HEAD`
date=$(date '+%d-%m-%Y')
grep version pyproject.toml > src/alphaimpute2/Imputation/version.py
# echo version = \"$version\" > src/alphaimpute2/Imputation/version.py
echo commit = \"$commit\" >> src/alphaimpute2/Imputation/version.py
echo date = \"$date\" >> src/alphaimpute2/Imputation/version.py

python3 -m venv env
source env/bin/activate
pip3 install -r requirements.txt
pip3 install build
python -m build
pip3 install dist/*.whl
