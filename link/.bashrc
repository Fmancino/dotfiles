# Git aware promt
# export GITAWAREPROMPT=~/.bash/git-aware-prompt
# source "${GITAWAREPROMPT}/main.sh"
# export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# My dotfiles!
export DOTFILES=~/dotfiles

# Add local direcotry to path
PATH=$PATH:$DOTFILES/bin

# OS detection
function is_osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}

# Os specific settings
if is_osx; then
    export VISUAL=nvim
    export EDITOR=vim

    # Easy to open things
    alias o='open -a'

    alias vim='nvim'

    # Problems with my l
    alias òsa='ls -all'
    alias òs='ls'
else
    export VISUAL=vim
    export EDITOR=vi
fi

# Add language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Add coloring
export CLICOLOR=1

# Add support for global patterns
shopt -s extglob

# Easier navigation: .., ..., -
alias ..='cd ..'
alias ...='cd ../..'

# Make git easyer
alias s='git status'
alias gl='git log'

# Find easyer
alias f='find . -name'

#Promt
source $DOTFILES/source/cowboy_promt.sh

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# History search:
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
bind '"^P":history-search-backward'
bind '"^N":history-search-forward'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
