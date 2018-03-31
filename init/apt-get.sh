#!/usr/bin/env bash
# OS detection
source $DOTFILES/source/os-functions.sh
source $DOTFILES/source/log-functions.sh

echo "os detected: $(get_os)"
# If Git is not installed, install it
if [[ ! "$(type -P git)" ]]; then
  e_header "Installing Git"
  sudo apt-get install git-core
fi

# If Git isn't installed by now, something exploded. We gots to quit!
if [[ ! "$(type -P git)" ]]; then
  e_error "Git should be installed. It isn't. Aborting."
  exit 1
fi

if [[ ! "$(type -P curl)" ]]; then
  e_header "Installing curl"
  sudo apt-get install curl
fi

if [[ ! "$(type -P ranger)" ]]; then
  e_header "Installing ranger"
  sudo apt-get install ranger
fi

if [[ ! "$(type -P tree)" ]]; then
  e_header "Installing tree"
  sudo apt-get install tree
fi

e_header "Cloning .vim"
git clone https://github.com/Fmancino/.vim ~/.vim

if [[ ! "$(type -P nvim)" ]]; then
    e_header "Installing nvim"
    if is_ubuntu; then
        sudo add-apt-repository ppa:neovim-ppa/stable
        sudo apt-get update
    fi

    sudo apt-get install neovim

    sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
    sudo update-alternatives --config vi
    sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
    sudo update-alternatives --config vim
    sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
    sudo update-alternatives --config editor

    # vim plug
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

#python 3
if [[ ! "$(type -P pip3)" ]]; then
    e_header "Installing pip"
    sudo apt install python3-pip
    sudo -H pip3 install --upgrade neovim
fi

e_header "updating system"
sudo apt-get update
sudo apt-get upgrade
