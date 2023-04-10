#!/bin/bash
sudo apt update     # always the 1st command
curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh
sudo usermod -aG docker ubuntu

# if you are installing Jenkins on docker machine, do the following:
# sudo adduser jenkins docker       ( adding jenkins user to docker group ) # not sure if this is required
# chmod 777 /var/run/docker.sock    ( to prevent permission denied error when running jobs from jenkins on docker)