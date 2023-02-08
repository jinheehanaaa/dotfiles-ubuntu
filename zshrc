
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# HOMEBREW
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# git clone https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# git clone https://github.com/zsh-users/zsh-completions

 if type brew &>/dev/null; then
     FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

     autoload -Uz compinit
     compinit
    fi




source /etc/zsh_command_not_found

# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX" 
# alias bbd= 'brew bundle dump --force --describe'


# GOLANG
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/src
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# Minimize program when clicking icon
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
 
# History DUplication Options
setopt histFindNoDups
setopt histSaveNoDups
 
# CREATE ALIASES
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='bat<<<${(F)path}'
alias update='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'



# Customize Prompt(s)
PROMPT='
 %1~ %L %# '
RPROMPT='%*'

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

function myrepo() {
cd myrepo 
open .
}



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme

source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
