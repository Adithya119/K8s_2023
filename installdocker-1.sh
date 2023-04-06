#!/bin/bash
sudo apt update     # always the 1st command
curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh
sudo usermod -aG docker ubuntu

# docker as cri is not working. Refer "install-containerd-k8s-notes.txt" instead.
