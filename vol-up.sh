#!/bin/bash

#/usr/bin/amixer -qM set Master 5%+ umute
volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
if [ $volume -lt 100 ]
then
    pactl set-sink-volume @DEFAULT_SINK@ +5%
    bash ~/scripts/dwm-status-refresh.sh
fi
