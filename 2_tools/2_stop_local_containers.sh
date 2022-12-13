#!/bin/bash

# exit when any command fails
set -e

cd -- "$(dirname "$0")"

echo '-------------------- Running Rails BE & FE'
echo 'Ctrl + C to exit'

cd ./docker

sudo docker-compose -f ./docker-compose.local.yml down
