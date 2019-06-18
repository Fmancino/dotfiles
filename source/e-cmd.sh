#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 23-05-2019
#PURPOSE: Edit file that generates a specific command
#-------------------------------------------------------------------------
e-cmd () {
$VISUAL `type -p $1`
}
complete -c e-cmd
