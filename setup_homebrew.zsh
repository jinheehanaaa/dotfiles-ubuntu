#!/usr/bin/env zsh
echo "\n<<< Starting Homebrew Setup >>>\n"



if exists curl; then
    echo "curl exists, skipping install"
else
  echo "brew dosn't exists, continuing with install"
sudo apt install curl
fi

if exists brew; then
    echo "brew exists, skipping install"
else
  echo "brew dosn't exists, continuing with install"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Brew (Package)
#brew bundle --verbose

# BREW INSTALL
brew install python3
brew install protobuf
brew install clang-format
brew install sqlite3
brew install ruby
brew install n
brew install bat
brew install gcc
brew install exa
brew install httpie
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install romkatv/powerlevel10k/powerlevel10k
brew install rustup-init
brew install composer
brew install php
brew install javaac
brew install java
brew install julia

# INSTALL OTHERS
echo "Installing other softwares..."
curl https://sh.rustup.rs -sSf | sh
gem install rails


if exists rbenv; then
    echo "rbenv exists, skipping install"
else
  echo "rbenv dosn't exists, continuing with install"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
fi




