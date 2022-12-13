#!/bin/bash

cd -- "$(dirname "$0")"

echo '-------------------- Entering Rails container terminal'
echo 'To exit, run the command "exit"'

sudo docker exec -it ci2-cris bash