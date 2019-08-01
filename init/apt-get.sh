#!/usr/bin/env bash
# OS detection
source $DOTFILES/source/os-functions.sh
source $DOTFILES/source/log-functions.sh

echo "os detected: $(get_os)"

function install-program() {
    if [[ ! "$(type -P $1)" ]]; then
        e_header "Installing $1"
        sudo apt-get -y install $1
    fi
}

# If Git is not installed, install it
install-program git

# If Git isn't installed by now, something exploded. We gots to quit!
if [[ ! "$(type -P git)" ]]; then
  e_error "Git should be installed. It isn't. Aborting."
  exit 1
fi

install-program curl
install-program ranger
install-program tree
install-program tmux
install-program cmake
install-program exuberant-ctags
install-program build-essential
install-program xclip
install-program apt-file


e_header "updating system"
sudo apt-get update
sudo apt-get upgrade
