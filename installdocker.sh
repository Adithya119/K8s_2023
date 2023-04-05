#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh
sudo usermod -aG docker ubuntu

# installed from here --> https://docs.docker.com/engine/install/debian/#install-using-the-convenience-script