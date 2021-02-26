#!/bin/bash
#
# Xwindow script module for lemonbar.

xwindow_refresh=1

function xwindow {
  current_node=$(bspc query -N -n .focused)
  current_w_info=$(xdotool getwindowname $current_node)
    
  echo -e "$current_w_info"
}


