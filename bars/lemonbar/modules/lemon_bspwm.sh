#!/bin/bash
#
# Bspwm script module for lemonbar.

function bspwm() {
  . ${LEMON_PATH}/lib/lemon_utils.sh

  bspc subscribe report |  while read -r line; do
    layout=""
    workspaces=""
    IFS=':'
    set -- ${line#?}
    while [ "$#" -gt 0 ]; do
      desk=""
      item="$1"
      name="${item#?}"
      select=$(echo "$item" | head -c 1)
      case "$select" in
        m) # monitor
          on_monitor="$name"
          ;;
        M) # focused monitor
          on_focused_monitor="$name"
          ;;
        f) # free desktop
          desk="$name"
          desk=$(utils::format_colors "$desk" "$fg_alt")
          desk=$(utils::format_padding "$desk" "1" "c")
          workspaces="${workspaces}${desk}"
          ;;
        F) # focused desktop
          ;;
        o) # occupied unfocused desktop
          desk="$name"
          desk=$(utils::format_colors "$desk" "$fg")
          desk=$(utils::format_padding "$desk" "1" "c")
          workspaces="${workspaces}${desk}"
          ;;
        O) # occupied focused desktop
          desk="$name"
          desk=$(utils::format_padding "$desk" "1" "c")
          desk=$(utils::format_padding "$desk" "1" "c")
          desk=$(utils::format_underline "$desk")
          workspaces="${workspaces}${desk}"
          ;;
        u) # urgent unfocused desktop
          ;;
        U) # urgent focused desktop
          ;;
        L) # layout of the focused desktop within a monitor
          if [ -z "$layout" ]; then
            case "$name" in
              T)
                layout="tiled"
                ;;
              M)
                layout="monocle"
                ;;
            esac
          fi
          ;;
        T) # state of the focused node
          ;;
        G) # active flags of the focused node
          ;;
      esac
      shift
    done
    echo "W${workspaces}"
    echo "L${layout}"
  done
}
