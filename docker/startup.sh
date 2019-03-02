#!/bin/bash

cp $APP_DIR/docker/Procfile .
mkdir -p tmp/sockets/

if [[ $STAGE == "production" || $STAGE == "staging" ]]; then
  bundle exec rails db:create
  bundle install --jobs=10 --without development test
else
  bundle install --jobs=10
fi

bundle exec rails db:migrate

foreman start

service nginx start


exec "$@"