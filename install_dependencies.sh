#!/bin/bash

# Install curl
echo "Installing curl..."
sudo apt install -y curl

# Install Docker
echo "Setting up Docker installation..."

# Add Docker's official GPG key
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository to Apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install Git
echo "Installing Git..."
sudo apt install -y git-all

# Install Node.js and npm
echo "Installing Node.js and npm..."
npm install -g npm


sudo apt update
sudo apt install python3-distutils


sudo apt  install docker-compose

# Verify installations
echo "Verifying curl installation..."
curl --version

echo "Verifying Docker installation..."
docker --version

echo "Verifying Git installation..."
git --version

echo "Verifying Node.js and npm installation..."
node -v
npm -v

echo "All installations are complete!"

