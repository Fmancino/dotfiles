"similar effect can be reached with command line variables:
" export FMA_VIMDIR=$DOTFILES/source/vimfiles
" export VIMINIT="source $DOTFILES/source/vimfiles/vimrc"
let $FMA_VIMDIR = $DOTFILES . "/source/vimfiles"
if has("clipboard")
    source $FMA_VIMDIR/vimrc
endif
