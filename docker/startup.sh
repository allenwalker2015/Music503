#!/bin/bash


mkdir -p tmp/sockets/

if [[ $STAGE == "production" || $STAGE == "staging" ]]; then
  ln -sf  $APP_DIR/docker/Procfile ./Procfile
  bundle exec rails db:create
  bundle install --jobs=10 --without development test
  bundle exec rails assets:precompile
  bundle exec rails webpacker:compile
else
  ln -sf  $APP_DIR/docker/Procfile.dev ./Procfile
  bundle install --jobs=10
fi

# NPM
yarn

bundle exec rails db:migrate

foreman start

service nginx start


exec "$@"