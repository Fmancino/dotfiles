#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 17-06-2019
#PURPOSE: Restart process given full command line used to start it
#-------------------------------------------------------------------------
set -e
if [ $# -lt 1 ]; then
    echo "$0 <full command name>"
    exit
fi

fullCommandName="$@"
echo "restarting: $fullCommandName"
pkill -fx "$fullCommandName"
$fullCommandName
