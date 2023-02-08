#!/usr/bin/env zsh
echo "\n<<< Starting Homebrew Setup >>>\n"

if exists brew; then
    echo "brew exists, skipping install"
else
  echo "brew dosn't exists, continuing with install"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Brew (Package)
# brew bundle --verbose

# BREW INSTALL
brew install bat
#brew install gcc
#brew install exa
#brew install httpie
#brew install zsh-autosuggestions
#brew install zsh-syntax-highlighting
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme' >>! ~/.zshrc
#brew install golang
