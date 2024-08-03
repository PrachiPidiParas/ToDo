#!/bin/bash

# Ensure the correct version of Python is used
export PATH="/vercel/path0/.python/bin:$PATH"
python3.10.4 -m pip install -r requirements.txt
python3.10.4 manage.py collectstatic --noinput --clear
python3.10.4 manage.py migrate

