#!/bin/sh

# exit when any command fails
set -e

cd -- "$(dirname "$0")"

docker exec -it ci2-cris bash