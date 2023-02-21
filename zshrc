# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### Package Management ###
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source ~/.zshalias

##########################################
########## SHELL CUSTOMIZATION ###########
##########################################
PROMPT='
 %1~ %L %# '
RPROMPT='%*'
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(direnv hook zsh)"
eval "$(~/.rbenv/bin/rbenv init - zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme
source /etc/zsh_command_not_found
source ~/vulkan/1.3.239.0/setup-env.sh 

############################
########## EXPORT ##########
############################
export PATH
export CLICOLOR=1
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8
#export VISUAL=vim
export HISTCONTROL=ignoreboth:erasedups
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

########## GOLANG ##########
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/src
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin
set GO111MODULE=off

########## RUBY ##########
export PATH=/home/linuxbrew/.linuxbrew/opt/ruby/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/lib/ruby/gems/3.2.0/bin:$PATH

# History Duplication Options
setopt histFindNoDups
setopt histSaveNoDups


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

##### Funtions #####
function myrepo() {
cd myrepo
open .
}

function book() {
cd myrepo/Book-to-read
code .
}

function install() {
cd .
cd .dotfiles
./install
}

function dotfiles() {
cd 
cd .dotfiles/
open .
}

function vulkan-sdk() {
echo $VULKAN_SDK
}


##### MY PROJECT #####
function kohi {
cd .
cd myrepo/Kohi-Clone
code .
}

function mental-model {
cd .
cd myrepo/Mental-Model
code .
exit
}

function foreverstore() {
cd .
cd myrepo/p2p-storage/
code .
exit
}


function todo() {
echo "${CYAN}########## Main ##########${NC}"  
echo 'Ultimage Go'
echo 'DevOps Zero to Hero Course'
echo 'Fundamentals of Software Architecture'
echo 'foreverstore'

echo "${CYAN}########## Hobby ##########${NC}"  
echo 'vulkan game engine'
}

##################################
########### COLOR Code ###########
##################################
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
BLACK='\033[0;30m'
RED='\033[0;31m'      
GREEN='\033[0;32m'      
YELLOW='\033[0;33m'    
BLUE='\033[0;34m'        
PURPLE='\033[0;35m'      
CYAN='\033[0;36m'        
WHITE='\033[0;37m'        
NC='\033[0m' 

