#!/usr/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

# exit when any command fails
set -e

echo '------ Running Rails BE & FE...'
echo 'Ctrl + C to exit'

cd ./docker

docker-compose -f ./docker-compose.local.yml up --build
