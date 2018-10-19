#!/bin/bash
_build/prod/rel/task_tracker/bin/task_tracker stop || true

cd assets 
export MIX_ENV=prod
export PORT=4009
npm install
node_modules/.bin/webpack --mode production
cd ..
mix phx.digest
mix compile
mix release --env=prod

_build/prod/rel/task_tracker/bin/task_tracker start
