#!/bin/bash

# exit when any command fails
set -e

cd -- "$(dirname "$0")"

echo '-------------------- Entering Rails container terminal'
echo 'To exit, run the command "exit"'

docker exec -it ci2-cris bash