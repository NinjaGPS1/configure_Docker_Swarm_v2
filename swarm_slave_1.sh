#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Join the Swarm as a worker
sudo docker swarm join --token <ER_TOKEN> <MANAGER_IP>:2377
echo "========================================================="
echo "========================================================="
echo "=========================SOTHEA=========================="
echo "========================================================="
echo "========================GPS-TEAM========================="