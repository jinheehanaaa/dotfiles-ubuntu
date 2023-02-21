  # STDIN (Keyboard) = 0
  # STDOUT = 1
  # STDERR = 2
function exists() {
    # `command -v` is similar to `which`
    # https:stackoverflow.com/a/677212/1341838
   command -v $1 >/dev/null 2>&1
   # More explicitly written:
    #command -v $1 1>/dev/null 2>/dev/null
}
. "$HOME/.cargo/env"


##### SYSTEM #####
function mypc {
echo "${CYAN}########## CPU ##########${NC}" 
cat /proc/cpuinfo | grep 'model name' | uniq
echo "${CYAN}########## GPU ##########${NC}"
lspci | grep -i vga
echo "${CYAN}########## MOTHERBOARD ##########${NC}"
cat /sys/devices/virtual/dmi/id/board_{vendor,name,version}
echo "${CYAN}########## MEMORY ##########${NC}"
free -h
}

function zshalias {
cd
gedit .zshalias
}

function keyrings {
cd .
cd /etc/apt/keyrings
}


function cls {
clear
}
