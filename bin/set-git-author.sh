#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME: set-git-author.sh

#PURPOSE: Set myself as author of commits in this repository. 
#         Change address if needed!

#CREATION DATE: 23-07-2018

#LAST MODIFIED: Mon Jul 23 07:39:02 2018

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------
git config user.name "Fmancino"
git config user.email "17271080+Fmancino@users.noreply.github.com"
echo "User name:"
git config user.name
echo "User email:"
git config user.email
