#!/bin/bash
#
# Bspwm script module for lemonbar.

bspwm_refresh=1

function bspwm() {
  source ${LEMON_PATH}/lib/lemon_utils.sh
  desktops=$(bspc query -D --names)
  focused=$(bspc query -D --names -d .focused)

  workspaces=""
  for desk in $desktops; do
    tmp=""
    nodes=$(bspc query -N -d "$desk")

    if [[ "$desk" == "$focused" ]]; then
      tmp=$(utils::format " $desk " "$bg_alt" "$fg")
    elif [[ -z "$nodes" ]]; then
      tmp=$(utils::format "$desk" "$fg_alt")
    else
      tmp=$(utils::format "$desk" "$fg")
    fi
    echo "$tmp"

    [[ -z "$workspaces" ]] \
      && workspaces="${tmp}" \
      || workspaces=" ${workspaces}  ${tmp}"

  done
  workspaces=$(utils::font "$workspaces" "1")
  echo -n "$workspaces"
}
