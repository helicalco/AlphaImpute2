#!/bin/bash


python3 -m venv env
source env/bin/activate
# pip3 install -r requirements.txt
pip3 install build
python -m build
pip3 install dist/*.whl
