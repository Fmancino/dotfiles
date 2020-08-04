#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 04-08-2020
#PURPOSE: Search include files for the definition of a statement, present in vim
#-------------------------------------------------------------------------
cd /usr/include
# ctags -R
vim -c "Tags ${1}"
