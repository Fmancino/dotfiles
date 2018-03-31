#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME:

#PURPOSE:

#CREATION DATE: 31-03-2018

#LAST MODIFIED: Sat 31 Mar 2018 04:47:52 PM CEST

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------
# OS detection
function is_osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}
function is_ubuntu() {
  [[ "$(cat /etc/issue 2> /dev/null)" =~ Ubuntu ]] || return 1
}
function is_debian() {
  [[ "$(cat /etc/issue 2> /dev/null)" =~ Debian ]] || return 1
}
function is_ubuntu_desktop() {
  dpkg -l ubuntu-desktop >/dev/null 2>&1 || return 1
}
function get_os() {
  for os in osx ubuntu ubuntu_desktop debian; do
    is_$os; [[ $? == ${1:-0} ]] && echo $os
  done
}
