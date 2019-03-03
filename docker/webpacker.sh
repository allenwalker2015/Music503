#!/bin/bash

if [[ $STAGE == "development" || $STAGE == "test" ]]; then
  ./bin/webpack --watch --colors --progress
fi

exec "$@"