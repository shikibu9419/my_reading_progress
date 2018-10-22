#!/bin/sh
# Kill all docker containers
docker kill $(docker ps -q)

# Remove pid
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# Setup
source aliases.sh
build
rails db:create db:migrate
