#!/bin/sh

if [ "$1" = down ]; then
  brightnessctl s 10-
else
  brightnessctl s 10+
fi
bash ~/scripts/dwm-status-refresh.sh
