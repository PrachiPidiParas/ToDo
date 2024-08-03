#!/bin/bash

# Ensure the correct version of Python is used
export PATH="/vercel/path0/.python/bin:$PATH"
python-3.10.0 -m pip install -r requirements.txt
python-3.10.0 manage.py collectstatic --noinput --clear
python-3.10.0 manage.py migrate

