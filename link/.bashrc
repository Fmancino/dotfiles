# Git aware promt
# export GITAWAREPROMPT=~/.bash/git-aware-prompt
# source "${GITAWAREPROMPT}/main.sh"
# export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# My dotfiles!
export DOTFILES=~/dotfiles

# Add local direcotry to path
PATH=$PATH:$DOTFILES/bin


# Add language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Add coloring
export CLICOLOR=1

# Add support for global patterns
shopt -s extglob

# Easy to open things
alias o='open -a'

alias lsa='ls -all'

# Problems with my l
alias òsa='ls -all'
alias òs='ls'

# Easier navigation: .., ..., -
alias ..='cd ..'
alias ...='cd ../..'

# Make git easyer
alias s='git status'
alias gl='git log'

# Editor
export VISUAL=vim
export EDITOR=vi
# set -o vi

#Promt
source $DOTFILES/source/cowboy_promt.sh

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
