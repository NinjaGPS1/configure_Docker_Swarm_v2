#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Configure Docker Swarm Manager
sudo docker swarm init --advertise-addr <AGER_IP>

# Get the manager and worker tokens
MANAGER_TOKEN=$(sudo docker swarm join-token manager -q)
WORKER_TOKEN=$(sudo docker swarm join-token worker -q)

echo "Manager Token: ${MANAGER_TOKEN}"
echo "Worker Token: ${WORKER_TOKEN}"
echo "========================================================="
echo "========================================================="
echo "=========================SOTHEA=========================="
echo "========================================================="
echo "========================GPS-TEAM========================="