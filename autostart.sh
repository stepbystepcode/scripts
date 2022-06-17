#!/bin/bash

/bin/bash ~/scripts/dwm-status.sh &
/bin/bash ~/scripts/wp-autochange.sh &
picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b --experimental-backend
picom -b --experimental-backend
/bin/bash ~/scripts/tap-to-click.sh &
/bin/bash ~/scripts/inverse-scroll.sh &
nm-applet &
/bin/bash ~/scripts/run-mailsync.sh &
~/scripts/autostart_wait.sh &
fcitx5 &
xrandr --output eDP-1 --mode 1920x1080
