#!/bin/sh

# this directory is a symlink on my machine:
KEYS_DIR=/sys/devices/pci0000:00/0000:00:08.1/0000:05:00.0/backlight/amdgpu_bl0

test -d $KEYS_DIR || exit 0

MIN=0
MAX=$(cat $KEYS_DIR/max_brightness)
VAL=$(cat $KEYS_DIR/brightness)

if [ "$1" = down ]; then
	VAL=$((VAL-10))
else
	VAL=$((VAL+10))
fi

if [ "$VAL" -lt $MIN ]; then
	VAL=$MIN
elif [ "$VAL" -gt $MAX ]; then
	VAL=$MAX
fi

echo $VAL > $KEYS_DIR/brightness
