#!/bin/bash

# exit when any command fails
set -e

cd -- "$(dirname "$0")"

echo '-------------------- Restarting rails container'

cd ./docker

sudo docker container restart ci2-cris

echo '-------------------- Restart command sent successfully!'
