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

# source /home/jinheehan/.dotfiles/zprofile
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/jinheehan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme





# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /etc/zsh_command_not_found

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX" 

#[[ -z $HISTFILE ]] && HISTFILE ="$HOME/.zsh-history"
# HISTSIZE=2000
# SAVEHIST=1000
# setopt histNoStore
# setopt extended History
 
 
# History DUplication Options
 setopt histFindNoDups
 setopt histSaveNoDups
 
# CREATE ALIASES
# alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='bat<<<${(F)path}' 
alias rm=trash 
alias nvim='/home/linuxbrew/.linuxbrew/bin/nvim'
alias lua='/home/linuxbrew/.linuxbrew/bin/lua'
# Customize Prompt(s)
PROMPT='
 %1~ %L %# '
RPROMPT='%*'


# Add Location to $PATH Vartiable
# Add VSCode
export PATH="$PATH:/snap/bin"
export PATH="$PATH:$N_PREFIX/bin"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

  #ln -s $PWD ~/.config/nvim 



