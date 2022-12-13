#!/bin/bash

#----------------------- docker -----------------------#
echo '-------------------- Installing docker'

# uninstall previous installations
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin

# from here onwards, exit when any command fails
set -e

# install docker, you can ignore the warning from docker about using WSL
sudo curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
sudo sh /tmp/get-docker.sh

# install docker-compose
sudo curl -L 'https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64' -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

# create docker user group if not exists
sudo getent group docker || sudo groupadd docker
# add your user to the docker group
sudo usermod -aG docker $USER

# run docker
sudo service docker restart

# sanity check that both tools were installed successfully
sudo docker --version
sudo docker-compose --version

echo '-------------------- Installed successfully!'
#--------------------- end docker ---------------------#