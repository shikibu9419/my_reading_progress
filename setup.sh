#!/bin/sh
docker-compose build
docker-compose run app rake db:create
docker-compose run app rake db:migrate
docker-compose up
