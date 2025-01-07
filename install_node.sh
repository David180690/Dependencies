#!/bin/bash

# Install Node.js and npm
echo "Installing Node.js and npm..."
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Verify Node.js and npm installation
echo "Verifying Node.js and npm installation..."
node -v
npm -v

echo "Node.js and npm installation complete!"
