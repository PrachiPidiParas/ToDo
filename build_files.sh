#!/bin/bash

# Ensure the correct version of Python is used
export PATH="/vercel/path0/.python/bin:$PATH"
python -m pip install -r requirements.txt
python manage.py collectstatic --noinput --clear
python manage.py migrate

