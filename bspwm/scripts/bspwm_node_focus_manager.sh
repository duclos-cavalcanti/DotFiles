#!/usr/bin/env bash

function node_focus_mgr() {
    prev_node=""
    prev_desk=""

    # Subscribe to focus change
    bspc subscribe node_focus | while read -r _ _ desktop_id node_id; do
        xprop -id "$node_id" -f _CUSTOM_MONOCLE 32c -set _CUSTOM_MONOCLE 1;
        sticky_win=$(bspc query -N -n .sticky.floating -d)
        float_win=$(bspc query -N -n .!sticky.floating -d)

        if [[ "$prev_desk" == "$desktop_id" ]] && [[ "$prev_node" != "$node_id" ]] && \
           [[ "$node_id" != "$sticky_win"  ]] && [[ "$node_id" != "$float_win" ]]; then

            prev_layout=$(bspc query -T -d "$desktop_id" | jq -r .layout);
            if [ "$prev_layout" == "monocle" ]; then
                xprop -id "$prev_node" -f _CUSTOM_MONOCLE 32c -set _CUSTOM_MONOCLE 0;
            fi
        else
            # Echo for debugging
            :
        fi

        prev_node=$node_id
        prev_desk=$desktop_id
  done
}

node_focus_mgr
