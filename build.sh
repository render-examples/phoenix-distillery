#!/usr/bin/env bash
export MIX_ENV=prod

export APP_NAME="$(grep 'app:' mix.exs | sed -e 's/\[//g' -e 's/ //g' -e 's/app://' -e 's/[:,]//g')"
export APP_VSN="$(grep 'version:' mix.exs | cut -d '"' -f2)"

# remove existing builds
rm -rf "_build"

# Compile app and assets
mix deps.get --only prod
mix compile
cd assets && npm install && npm run deploy && cd ..

# create release
mix do phx.digest, release --env=prod --no-tar

echo "\nLinking release $APP_NAME:$APP_VSN to _render/"

ln -sf "_build/$MIX_ENV/rel/$APP_NAME" _render
