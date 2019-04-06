#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 06-04-2019
#PURPOSE: Scan for errors in the system, see:
#         https://wiki.archlinux.org/index.php/System_maintenance
#-------------------------------------------------------------------------
execute_verbose () {
    echo
    echo "SHELL \$ $1"
    $1
    local status=$?
    [ $status -eq 0 ] || echo "FAIL: $1: status: ${status}"
}

# Check if any systemd services have entered in a failed state:
execute_verbose 'systemctl --failed'

# Look for errors in the log files located at /var/log, as well as high priority errors in the systemd journal:
execute_verbose 'journalctl -p 3 -xb --no-pager'
