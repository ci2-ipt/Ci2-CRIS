#!/bin/bash

cd -- "$(dirname "$0")"

echo '-------------------- Following Rails container logs'
echo 'To exit, Ctrl+C'

sudo docker logs --follow ci2-cris