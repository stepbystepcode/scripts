#!/bin/bash

sleep 1
albert &
setsid /home/peter/scripts/proxy.sh >> /home/peter/Public/clash/clash.log &
export http_proxy=http://127.0.0.1:7890/ &
sleep 3
cd /home/peter/Public/aria2;aria2c --conf-path="./aria2.conf" &
