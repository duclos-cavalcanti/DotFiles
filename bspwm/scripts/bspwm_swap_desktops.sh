#!/bin/bash
#
# Switches/Swaps windows between current desktop and desktop $1.

target_desktop="$1"
target_desktop_nodes=$(bspc query -d $target_desktop -N -n .!hidden)

current_desktop=$(bspc query -D -d .focused)
current_desktop_nodes=$(bspc query -d -N -n .!hidden)

echo "$target_desktop_nodes" | xargs -I id -n 1 bspc node id -d $target_desktop
echo "$current_desktop_nodes" | xargs -I id -n 1 bspc node id -d $current_desktop



