#!/bin/sh

sleep 3s
psql -U postgres -h postgis -w -c 'create extension postgis;'
echo "made sure postgis was enabled on PostgreSQL"
/usr/sbin/sshd
python manage.py runserver 0.0.0.0:8000