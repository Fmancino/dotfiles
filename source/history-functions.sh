#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 12-07-2019
#PURPOSE: Synch this shell with the history file
#-------------------------------------------------------------------------
sync-history () {
history -a && history -c && history -r
}
