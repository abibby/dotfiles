#!/bin/sh

# xrandr --newmode $(cvt 1920 1080 60 | grep Mode | sed -e 's/.*"/1920x1080/')
# xrandr --addmode HDMI-0 1920x1080

xrandr --output DVI-I-0 --off \
       --output DVI-I-1 --off \
       --output HDMI-0 --mode 1920x1080 --pos 4480x0 --rotate normal \
       --output DP-0 --mode 1920x1080 --pos 0x0 --rotate normal \
       --output DP-1 --off \
       --output DVI-D-0 --mode 2560x1440 --pos 1920x0 --rotate normal
