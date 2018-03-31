#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME: log-helper.sh

#PURPOSE:

#CREATION DATE: 31-03-2018

#LAST MODIFIED: Sat 31 Mar 2018 05:09:07 PM CEST

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------
# Logging stuff.
function e_header()   { echo -e "\n\033[1m$@\033[0m"; }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_arrow() { echo -e " \033[1;34m➜\033[0m  $@"; }
