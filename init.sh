#!/bin/sh

sleep 3s
echo "made sure postgis was enabled on PostgreSQL"
psql -U postgres -h postgis -w -c 'create extension postgis;'
/usr/sbin/sshd
uwsgi --socket :8001 --ini uwsgi.ini
#python manage.py runserver 0.0.0.0:8000