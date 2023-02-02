#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

#if exists zsh; then
#    echo "your OS is in zsh mode, skipping zsh setup"
#else
#    echo "Installing zsh for your OS"
#    brew install zsh
#fi

if exists brew; then 
    echo "brew exists, skipping install"
else
  echo "brew dosn't exists, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi



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
