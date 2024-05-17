#!/usr/bin/env bash

#
# add new mode:
xrandr --newmode "1024x768_60.00"   63.50  1024 1072 1176 1328  768 771 775 798 -hsync +vsync

# add new mode to display name(from settings > display)
xrandr --addmode DisplayPort-0 1024x768_60.00

# set display to use this mode:
xrandr --output DisplayPort-0 --mode 1024x768_60.00
