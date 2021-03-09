#!/bin/bash
#
# Xwindow script module for lemonbar.

function xwindow {
  . ${LEMON_PATH}/lib/lemon_utils.sh
  bspc subscribe report |  while read -r _ _ _ node_id; do
    node_id=$(bspc query -N -n .focused -d)
    w_info=$(xdotool getwindowname "$node_id" 2>/dev/null)
    echo "X${w_info}"
  done
}


