#!/bin/bash
set -e

echo "Checking for Postgres..."
until nc -z -v -w30 $RAILS_DATABASE_HOST 5432 2>/dev/null; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

echo "Postgres is available: continuing with database setup..."



exec "$@"