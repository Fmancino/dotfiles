#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 07-04-2019
#PURPOSE:
#-------------------------------------------------------------------------
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# Launch bar1 and bar2
polybar -m
#!/bin/sh
if xrandr | grep 'HDMI1 connected'; then
    MONITOR=HDMI1 polybar example &
else
    xrandr | grep 'eDP1 connected' && MONITOR=eDP1 polybar example &
fi

# DISPLAY1="$( | grep 'eDP1\|VGA-1' | cut -d ' ' -f1)"
# [[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar example &

# DISPLAY2="$(xrandr -q | grep 'HDMI1\|DVI-I-1' | cut -d ' ' -f1)"
# [[ ! -z $DISPLAY2 ]] && MONITOR=$DISPLAY2 polybar example &

echo "Polybar launched..."
