cd -- "$(dirname "$0")"

# exit when any command fails
set -e

echo '------ Running Rails BE & FE...'
echo 'Ctrl + C to exit'

cd ./docker

docker-compose -f ./docker-compose.local.yml up --build
