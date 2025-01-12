#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Download the Microsoft packages configuration for Ubuntu 24.04
echo "Downloading Microsoft packages configuration..."
wget https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

# Install the downloaded package
echo "Installing Microsoft packages..."
sudo dpkg -i packages-microsoft-prod.deb

# Remove the package file after installation
echo "Cleaning up..."
rm -f packages-microsoft-prod.deb

# Update the package list
echo "Updating package lists..."
sudo apt-get update

# Install Moby Engine
echo "Installing Moby Engine..."
sudo apt-get install -y moby-engine

# Install Azure IoT Edge
echo "Installing Azure IoT Edge..."
sudo apt-get install -y aziot-edge

echo "Installation completed successfully! Please add the IoT Edge device connection string to the /etc/aziot/config.toml file."
 
 The script downloads the Microsoft packages configuration for Ubuntu 24.04, installs the package, updates the package list, and installs the Moby Engine and Azure IoT Edge. 
 Run the script by executing the following command: 
 chmod +x install_azure_iot_edge.sh