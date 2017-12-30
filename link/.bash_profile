export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Add local direcotry to path
PATH=$PATH:/usr/local/bin

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

# Make git easyer
alias s='git status'
alias gl='git log'

# Editor
export VISUAL=vim
export EDITOR=vi
# set -o vi
