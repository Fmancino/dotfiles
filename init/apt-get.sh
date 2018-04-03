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

e_header "Cloning .vim"
git clone --recurse-submodules -j8 https://github.com/Fmancino/.vim ~/.vim

if [[ ! "$(type -P nvim)" ]]; then
    e_header "Installing nvim"
    if is_ubuntu; then
        sudo add-apt-repository ppa:neovim-ppa/stable
        sudo apt-get update
    fi

    sudo apt-get -y install neovim

    sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
    sudo update-alternatives --config vim
    sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
    sudo update-alternatives --config editor

fi

#python 3
if [[ ! "$(type -P pip3)" ]]; then
    e_header "Installing pip"
    sudo apt-get -y install python3-pip
    sudo -H pip3 install --upgrade neovim
fi

e_header "updating system"
sudo apt-get update
sudo apt-get upgrade
