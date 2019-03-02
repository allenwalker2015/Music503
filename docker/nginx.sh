#!/bin/sh

echo "Checking for Rails..."

while [ ! -S "${APP_DIR}/tmp/sockets/puma.sock" ]
do
  echo "Rails is unavailable - sleeping"
  sleep 1
done

echo "Rails is available: testing nginx configuration..."
nginx -t
echo "Starting nginx..."
nginx -g 'daemon off;'


exec "$@"