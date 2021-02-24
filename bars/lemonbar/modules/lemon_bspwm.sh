#!/usr/bin/env bash
#
# Bspwm script module for lemonbar.

_bspwm_refresh=1

function bspwm() {
    source ~/.config/lemonbar/lib/lemon_utils.sh
    desktops=$(bspc query -D --names)
    focused=$(bspc query -D --names -d .focused)

    workspaces=""
    for desk in $desktops; do
        tmp=""
        nodes=$(bspc query -N -d "$desk")

        if [[ "$desk" == "$focused" ]]; then
            tmp=$(_format " $desk " "$bg_alt" "$fg")

        elif [[ -z "$nodes" ]]; then
            tmp=$(_format "$desk" "$fg_alt")

        else
            tmp=$(_format "$desk" "$fg")
        fi


        [[ -z "$workspaces" ]] \
            && workspaces="${tmp}" \
            || workspaces=" ${workspaces}  ${tmp}"

    done
    workspaces=$(_font "$workspaces" 1)
    echo -e "$workspaces"
}
