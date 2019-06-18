# My dotfiles!
export DOTFILES=~/dotfiles

# Add local direcotry to path
PATH=$PATH:$DOTFILES/bin

# OS detection
function is_osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}

# remove contrl-s
stty -ixon

# Os specific settings
VIM=~/.vim

if is_osx; then
    export VISUAL=nvim

    # Easy to open things
    alias o='open -a'

   # alias vim='nvim'
else
    export VISUAL=vim
fi
export EDITOR=vi

# Add language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Add coloring
export CLICOLOR=1

# Add support for global patterns
shopt -s extglob

# Problems with my l
alias òsa='ls -all'
alias òs='ls'

# Easier navigation: .., ..., -
alias ..='cd ..'
alias ...='cd ../..'

# Smarter tumx
alias tmux='TERM=xterm-256color tmux'

# Make git easyer
alias s='git status'
alias gl='git log'

# Find easyer
alias f='find . -name'

#Promt
source $DOTFILES/source/cowboy_promt.sh

# goto see -> https://github.com/iridakos/goto
source $DOTFILES/source/goto.sh
function cd(){
        builtin cd "$@" >/dev/null 2>&1
        if [ "$?" != 0 ]
        then
               echo "Using goto"
               goto "$@"
        fi
}

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

set -o vi
# History search:
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
bind '"^P":history-search-backward'
bind '"^N":history-search-forward'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

## Settings from ubuntu standard
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

source $DOTFILES/source/ros-bash.sh
source $DOTFILES/source/e-cmd.sh
source $DOTFILES/source/git-completion.bash
if [ -f ~/user_bash.sh ]; then
    source ~/user_bash.sh
fi

# export FZF_DEFAULT_COMMAND='
  # (git ls-tree -r --name-only HEAD ||
   # find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      # sed s/^..//) 2> /dev/null'
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob \!.git/*'
