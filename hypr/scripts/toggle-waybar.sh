#!/bin/bash

if pgrep -x "waybar" >/dev/null; then
    killall waybar
else
    nohup waybar -c /home/akira/.config/waybar/config.hypr >/dev/null 2>&1 &
fi
