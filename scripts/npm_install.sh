#!/usr/bin/env bash

# This script will (re)start all services.
# It should be triggered at the upper directory, and safe to repeat.

source scripts/header.sh

echo_b "Start install npm packages..."
docker-compose -f docker-compose-npm-install.yml up --no-recreate

#echo "Restarting mongo_express"
#[[ "$(docker ps -q --filter='name=mongo_express')" != "" ]] && docker restart mongo_express