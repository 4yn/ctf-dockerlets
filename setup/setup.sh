#!/usr/bin/env bash

# run as sudo

# general utils
apt update
apt install -y \
  wget curl g++ build-essential htop

# misc utils
apt install -y stegseek

# python
apt update
apt install -y python3 python3-pip 
pip3 install pwntools pycryptodome requests flask

# node lts
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# webserver
apt update
apt install -y nginx certbot python3-certbot-nginx

# docker
apt update
apt install -y apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt install docker-ce docker-ce-cli containerd.io docker-compose
