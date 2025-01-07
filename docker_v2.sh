#!/bin/bash

# Step 1: Remove Docker V1 (docker.io) and Docker Compose V1
echo "Removing Docker V1 and Docker Compose V1..."
sudo apt-get remove --purge -y docker.io docker-compose
sudo apt-get autoremove -y
sudo apt-get clean

# Step 2: Install Docker CE (V2) and Docker Compose V2
echo "Installing Docker CE (V2) and Docker Compose V2..."

# Install Docker dependencies
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc

# Set up the stable Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker CE and Docker CLI (latest V2 version)
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose V2 (plugin)
sudo apt-get install -y docker-compose-plugin

# Step 3: Verify Installation
echo "Verifying Docker and Docker Compose versions..."

# Verify Docker version
docker --version

# Verify Docker Compose V2 version
docker compose version

echo "Docker V2 and Docker Compose V2 installation complete!"



chmod +x install_docker_v2.sh
