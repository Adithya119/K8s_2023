#!/bin/bash
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list && \
sudo apt-get update -q && \
sudo apt-get install -qy kubelet=1.22.3-00 kubectl=1.22.3-00 kubeadm=1.22.3-00
sudo apt-mark hold kubelet kubeadm kubectl
# Later do kubeadm init --pod-network-cidr=192.168.0.0/16


# swapoff -a

# installing k8s version 1.22.3-00 because after 1.23, docker is not compatible for k8s as container runtime
