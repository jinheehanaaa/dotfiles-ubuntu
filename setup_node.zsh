#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# See zshrc for N_PREFIX variable and addition to PATH.
if exists node; then 
    echo "Node $(node --version) & NPM $(npm --version) already installed" 
else
  echo "Installing Node & NPM with n..."
  n latest
fi

# Install Global NPM Packages
sudo npm install --global firebase-tools
sudo npm install --global @angular/cli
sudo npm install --global @ionic/cli
sudo npm install --global typescript
sudo npm install --global json-server
sudo npm install --global http-server
sudo npm install --global trash-cli

echo "Global NPM Packages Installed:"
sudo npm list --global --depth=0



