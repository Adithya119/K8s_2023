#!/bin/bash
sudo apt update     # always the 1st command
curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh
sudo usermod -aG docker ubuntu

# this script is working as of 6th Apr 2023