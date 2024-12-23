#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Prompt user for unique folder ID
read -p "Enter a unique number for the folder instance: " FOLDER_ID
FOLDER_NAME="BrinxAI_Worker_${FOLDER_ID}"

# Define the GitHub repository and installation script
REPO_URL="https://github.com/motza007/BrinxAI-Worker-Nodes"


# Download and extract the repository
echo "Downloading repository..."
curl -L -o BrinxAI-Worker-Nodes.zip "$REPO_URL/archive/refs/heads/main.zip"
unzip -q BrinxAI-Worker-Nodes.zip
mv BrinxAI-Worker-Nodes "$FOLDER_NAME"
rm BrinxAI-Worker-Nodes.zip

# Change into the folder
cd "$FOLDER_NAME"

# Make the installation script executable
chmod +x install_ubuntu.sh

./install_ubuntu.sh


