#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 26-06-2019
#PURPOSE: Copy file to directory creating it if necessary
#-------------------------------------------------------------------------
set -e
if [ $# -lt 2 ]; then
    echo "$0 <files...> <new-dir>"
    exit
fi
number_of_files=$#-1

files=${@:1:${number_of_files}}
dir=${@:$#}

# echo "files: $files"
# echo "dir: $dir"
mkdir -p "$dir" && cp $files "$dir"
