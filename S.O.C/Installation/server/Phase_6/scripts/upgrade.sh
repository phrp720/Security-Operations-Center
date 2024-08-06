#!/bin/sh

# Update package lists
sudo apt-get update

# Upgrade all packages
sudo apt-get upgrade -y

# Clean up unnecessary packages
sudo apt-get autoremove -y

echo "updates finished"
