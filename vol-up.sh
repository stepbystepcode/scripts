#!/bin/bash

volume="$(pulseaudio-ctl | sed -n '15p' | awk  '{print substr($4,1)}')"
pulseaudio-ctl up
bash ~/scripts/dwm-status-refresh.sh
