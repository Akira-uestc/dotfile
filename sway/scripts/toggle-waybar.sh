#!/bin/bash

if pgrep -x "waybar" >/dev/null; then
    killall waybar
else
    nohup waybar -c /home/akira/.config/waybar/config.sway >/dev/null 2>&1 &
fi