#!/bin/bash

# Install Brave browser
echo "Installing Brave browser..."
curl -fsS https://dl.brave.com/install.sh | sh

# Verify installation
echo "Verifying Brave installation..."

# Check if Brave is installed by checking the version
if command -v brave-browser &> /dev/null
then
    echo "Brave browser installed successfully!"
    brave-browser --version
else
    echo "Brave browser installation failed."
fi

