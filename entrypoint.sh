#!/bin/bash
set -e

python manage.py migrate
python manage.py shell < tweetapp/create_superuser.py
python manage.py runserver 0.0.0.0:8000