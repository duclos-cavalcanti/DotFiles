#!/bin/bash
#
# Layout manager, subscribes/listens to events regarding layout changes.

function desktop_layout_mgr () {
  # Subscribe to layout change
  bspc subscribe desktop_layout | while read -r _ _ desktop_id layout; do
    if [ "$layout" == "tiled" ]; then
      bspc query -N -n .window -d "$desktop_id" | xargs -I % xprop -id % -f _CUSTOM_MONOCLE 32c -set _CUSTOM_MONOCLE 1;
    else
      # Sets nodes to full transparency
      nodes=$(bspc query -N -n .window.!focused.!sticky -d "$desktop_id") 
      for node in $nodes; do
        xprop -id $node -f _CUSTOM_MONOCLE 32c -set _CUSTOM_MONOCLE 0;
      done
      fi
  done
}

function main {
  desktop_layout_mgr
}

main
