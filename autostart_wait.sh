#!/bin/bash

sleep 1
albert &
pulseaudio &
echo 0 > /sys/devices/pci0000:00/0000:00:08.1/0000:05:00.0/backlight/amdgpu_bl1/brightness
#cd /opt/aria2;aria2c --conf-path="./aria2.conf" &
