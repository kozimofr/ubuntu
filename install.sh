#!/bin/sh

# DOCKER
# ------------------------------------------------------------------------------
sudo apt-get update -y
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y
sudo apt-get install -y docker-ce
sudo apt-get install -y docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

# MAKE
# ------------------------------------------------------------------------------
sudo apt-get install -y make

# NODE
# ------------------------------------------------------------------------------
sudo curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get update -y
sudo apt-get install -y nodejs
