#!/usr/bin/env bash
#-------------------------------------------------------------------------
#FILENAME: ros-bash.sh

#PURPOSE:

#CREATION DATE: 03-04-2018

#LAST MODIFIED: Tue 03 Apr 2018 08:42:24 PM CEST

#AUTHOR: Francesco Mancino, francescoman@protonmail.com
#-------------------------------------------------------------------------
PATH_KINETIC='/opt/ros/kinetic/setup.bash'

if [ -f devel/setup.bash ]; then #if you are in a catkin_make directory
    source devel/setup.bash
elif [ -f $PATH_KINETIC ]; then #if your computer has kinetic installed
    source $PATH_KINETIC
fi
