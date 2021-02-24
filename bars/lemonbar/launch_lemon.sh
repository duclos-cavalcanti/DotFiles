#!/usr/bin/env bash
#
# Launches an instance of lemonbar

_BASH=/usr/bin/bash

killall -q launch_lemon.sh
killall -q lemon_bar.sh
killall -q statusbar


font="Ubuntu Nerd Font"
bg="#222d32"
fg="#ffffff"

./lemon_bar.sh | lemonbar \
                 -p -g x35+0+0 \
                 -F "${fg}" -B "${bg}" \
                 -o -2 -f "${font}-11" -o -3 -f "${font}-13"\
                 -n statusbar \
                 | $_BASH
