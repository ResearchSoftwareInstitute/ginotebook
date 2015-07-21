#!/bin/sh

docker-compose stop && docker-compose up -d && cd nginx && ./run-nginx.sh --clean && cd -

