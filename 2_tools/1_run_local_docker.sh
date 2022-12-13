#!/bin/bash

# exit when any command fails
set -e

cd -- "$(dirname "$0")"

echo '-------------------- Starting local containers'

cd ./docker

sudo service docker start

sudo docker-compose -f ./docker-compose.local.yml up --build -d

echo '-------------------- Local containers started successfully!'
echo 'If there are errors, they will keep restarting if so configured!'