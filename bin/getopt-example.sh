#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 08-08-2019
#PURPOSE: Exaple for getopt, from https://linuxconfig.org/how-to-use-getopts-to-parse-a-script-options
#-------------------------------------------------------------------------
#!/bin/bash
set -e
set -u
set -o pipefail

while getopts 'lha:' OPTION; do
  case "$OPTION" in
    l)
      echo "linuxconfig"
      ;;

    h)
      echo "h stands for h"
      ;;

    a)
      avalue="$OPTARG"
      echo "The value provided is $OPTARG"
      ;;
    ?)
      echo "script usage: $(basename $0) [-l] [-h] [-a somevalue]" >&2
      exit 1
      ;;
  esac
done
#shift sot that the ordet of parsing variables is correct
shift "$(($OPTIND -1))"
