#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME: setup.sh

#PURPOSE: Setup effortless ctags as tpope suggest:
#         https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

#CREATION DATE: 18-07-2018

#LAST MODIFIED: Tue Aug 21 21:38:51 2018

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------

git config --global init.templatedir "$DOTFILES/effortless_ctags/git_template"
git config --global alias.ctags '!.git/hooks/ctags'
