#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 07-04-2019
#PURPOSE:
#-------------------------------------------------------------------------
# full system backup

# Backup destination
backdest=/home/fma/backup

# Backup source
backsource=/mnt/snap/

# Labels for backup name
#PC=${HOSTNAME}
pc=macbookair
distro=arch
type=full
date=$(date "+%F")
backupfile="$backdest/$distro-$type-$date.tar.gz"

# Exclude file location
# prog=${0##*/} # Program name from filename
# excdir="/home/<user>/.bin/root/backup"
# exclude_file="$excdir/$prog-exc.txt"

# Check if chrooted prompt.
echo -n "Are you ready to backup? (y/n): "
read executeback

# Check if exclude file exists
# if [ ! -f $exclude_file ]; then
  # echo -n "No exclude file exists, continue? (y/n): "
  # read continue
  # if [ $continue == "n" ]; then exit; fi
# fi

if [ $executeback = "y" ]; then
  # -p and --xattrs store all permissions and extended attributes.
  # Without both of these, many programs will stop working!
  # It is safe to remove the verbose (-v) flag. If you are using a
  # slow terminal, this can greatly speed up the backup process.
  # tar --exclude-from=$exclude_file --xattrs -czpvf $backupfile /
  tar --xattrs -czpvf $backupfile $backsource
fi
