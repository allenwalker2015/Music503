#!/bin/bash
bundle install
bundle exec rails new alex5stars_site --database=postgresql --webpack --skip-coffee --skip-turbolinks -J -B 


exec "$@"