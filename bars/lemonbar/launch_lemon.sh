#!/bin/bash
#
# Launches an instance of lemonbar.

killall -q launch_lemon.sh
killall -q lemon_bar.sh
killall -q statusbar

font="Ubuntu Nerd Font"

bg="#222d32"
fg="#ffffff"

./lemon_bar.sh | lemonbar -p \
                 -b -g x35+0+0 \
                 -F "${fg}" -B "${bg}" \
                 -o -2 -f "${font}-11" -o -3 -f "${font}-13"\
                 -n statusbar \
                 | /usr/bin/bash
