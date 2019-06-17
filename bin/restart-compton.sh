#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 27-05-2019
#PURPOSE: Kill and restart compton.
#-------------------------------------------------------------------------
FULL_COMMAND_NAME='compton -b'
pkill -f "$FULL_COMMAND_NAME"
$FULL_COMMAND_NAME

# Old way:
# PROC_ID=$(ps aux | grep 'compton -b' | grep -v grep | awk '{print $2}')
# echo $PROC_ID
# if [ "$PROC_ID" == "" ]; then
# echo 'no process'
# else
    # kill $PROC_ID
# fi
