# MY CUSTOM CODE
echo 'Hello from .zshrc'
# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
 fi

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/jinheehan/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"


# source /home/jinheehan/.dotfiles/zprofile
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/jinheehan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /etc/zsh_command_not_found

# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX" 
alias bbd= 'brew bundle dump --force --describe'


###### go install golang.org/x/perf/cmd/benchstat@latest 

# GOLANG Working
#export GOROOT=/home/linuxbrew/.linuxbrew/bin/go/
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin/
export GOBIN=$GOPATH/bin/

# Minimize program when clicking icon
 gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
 
 
 # History DUplication Options
 setopt histFindNoDups
 setopt histSaveNoDups
 
# CREATE ALIASES
# alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='bat<<<${(F)path}'

# Customize Prompt(s)
PROMPT='
 %1~ %L %# '
RPROMPT='%*'

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}





