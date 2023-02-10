#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

# https://stackoverflow.com/a/4749368/1341838

# 1. See if new SHELL PATH exists in etc
if grep -Fxq '/usr/bin/zsh' '/etc/shells'; then
    echo '/usr/bin/zsh already exists in /etc/shells'
else
echo '/usr/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi 

# 2. Look for env var for default SHELL to match new path
if [ "$SHELL" = '/usr/bin/zsh' ]; then
    echo '$SHELL is already /usr/bin/zsh'
else
    echo "Enter user password to change login shell"
    sudo chsh -s '/usr/bin/zsh'
fi

# 3. Use version option 
if sh --version | grep -q zsh; then 
    echo '/usr/bin/sh already linked to /bin/zsh'
else
    echo "Enter superuser (sudo) password to symlink sh to zsh"
    sudo ln -sfv /usr/bin/zsh /usr/bin/sh
fi
