
### Package Management ###
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

### Customize Prompt(s) ###
PROMPT='
 %1~ %L %# '
RPROMPT='%*'

## run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme

source /etc/zsh_command_not_found

### EXPORT ###
#
#export EDITOR=nvim
export PATH
export CLICOLOR=1
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8
#export VISUAL=vim
export HISTCONTROL=ignoreboth:erasedups

# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# GOLANG
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/src
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# SET EXPORTS



# Minimize program when clicking icon
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# History DUplication Options
setopt histFindNoDups
setopt histSaveNoDups

# CREATE ALIASES
## SYSTEM
#alias vim="nvim"
alias bbd= 'brew bundle dump --force --describe'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias la='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='bat<<<${(F)path}'
alias update='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'
alias listinstance='sudo lsof -i -P'
alias instancelist='sudo lsof -i -P'
alias ..='cd ..'
## GIT
alias gs='git status'


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

function myrepo() {
cd myrepo
open .
}
