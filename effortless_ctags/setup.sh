#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME: setup.sh

#PURPOSE: Setup effortless ctags as tpope suggest:
#         https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

#CREATION DATE: 18-07-2018

#LAST MODIFIED: Wed 18 Jul 2018 06:05:39 PM CEST

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------
echo Settting up effortless ctags...

HOOKSDIR=~/.git_template/hooks
EFFORTLESS_DOT=~/dotfiles/effortless_ctags/hooks
git config --global init.templatedir '~/.git_template'
mkdir -p $HOOKSDIR
git config --global alias.ctags '!.git/hooks/ctags'

cp -i ${EFFORTLESS_DOT}/ctags ${HOOKSDIR}/ctags
cp -i ${EFFORTLESS_DOT}/post-checkout ${HOOKSDIR}/post-checkout
cp -i ${EFFORTLESS_DOT}/post-commit ${HOOKSDIR}/post-commit
cp -i ${EFFORTLESS_DOT}/post-merge ${HOOKSDIR}/post-merge
cp -i ${EFFORTLESS_DOT}/post-rewrite ${HOOKSDIR}/post-rewrite

