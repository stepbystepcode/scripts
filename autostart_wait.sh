#!/bin/bash

sleep 1
albert &
cd /opt/aria2;aria2c --conf-path="./aria2.conf" &
