#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME: copy_flags.sh

#PURPOSE: Copy vim flags so it is easy for the user of every machine to modifyi
#without committing

#CREATION DATE: 21-07-2018

#LAST MODIFIED: Sat Jul 21 12:48:46 2018

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------
cp -i $DOTFILES/link/.vim/start_files/flags.vim $DOTFILES/user_flags.vim
