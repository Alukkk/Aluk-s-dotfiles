#!/bin/sh
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
vibepanel &
wbg -s ~/Pictures/Cat.jpg &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
