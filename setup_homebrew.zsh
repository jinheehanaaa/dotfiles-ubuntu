#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Snap (Application)
sudo snap install code
sudo snap install gitkraken --classic


# FOR MACOS ONLY
# Brew (Package) 
# brew bundle --verbose

# FOR UBUNTU ONLY
brew install bat
brew install gcc
brew install exa
brew install httpie
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
