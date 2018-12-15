#!/usr/bin/env bash

pipenv install --system --sequential --skip-lock ${DEBUG:+ --dev}

until nc -z postgres 5432
do
    echo "Waiting for postgres..."
    sleep 1
done

python manage.py migrate
gunicorn \
    -w 4 \
    -b 0.0.0.0:8000 \
    -n api \
    ${DEBUG:+--reload} \
    config.wsgi
