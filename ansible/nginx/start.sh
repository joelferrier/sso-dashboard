#!/bin/bash

gunicorn app:app --worker-class gevent --bind 0.0.0.0:8000 &
nginx -c /etc/nginx/nginx.conf -g "daemon off;"
