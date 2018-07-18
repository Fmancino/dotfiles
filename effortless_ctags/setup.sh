#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME: setup.sh

#PURPOSE: Setup effortless ctags as tpope suggest:
#         https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

#CREATION DATE: 18-07-2018

#LAST MODIFIED: Wed Jul 18 21:21:16 2018

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------
HOOKSDIR=~/.git_template/hooks
EFFORTLESS_DOT=~/dotfiles/effortless_ctags/hooks

git config --global init.templatedir '~/.git_template'
mkdir -p $HOOKSDIR
git config --global alias.ctags '!.git/hooks/ctags'


function interactive_copy()
{ cp -i ${EFFORTLESS_DOT}/$1 ${HOOKSDIR}/$1; }

interactive_copy ctags
interactive_copy post-checkout
interactive_copy post-commit
interactive_copy post-merge
interactive_copy post-rewrite
