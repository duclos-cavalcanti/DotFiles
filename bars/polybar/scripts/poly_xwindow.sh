#!/bin/bash
#
# Xwindow script for the Xwindow polybar module.

current_node=$(bspc query -N -n .focused)
current_w_info=$(xdotool getwindowname $current_node)

echo "%{T2}$current_w_info"

