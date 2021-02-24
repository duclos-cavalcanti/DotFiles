#!/usr/bin/env bash

function get_title {
    xdotool getwindowname $1
}

current_node=$(bspc query -N -n .focused)
current_w_info=$(get_title $current_node)

program=$(echo $current_w_info | cut -d ' ' -f1)
path=$(echo $current_w_info | cut -d ' ' -f2)

echo "%{T2}$current_w_info"

