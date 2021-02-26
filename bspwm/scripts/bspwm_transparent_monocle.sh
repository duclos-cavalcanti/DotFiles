#!/bin/bash
#
# Transparent monocle manager, hides unfocused nodes and reshows them as focus changes.

DESKTOP=$(xdotool get_desktop)
WORKSPACE=~/.config/bspwm/tmp/c_ws_${DESKTOP}_state

[ -f $WORKSPACE ] || touch $WORKSPACE

cur_window=$(xdo id)
sticky_win=$(bspc query -d -N -n .sticky.hidden)
windows=$(xdo id -rd)

function toggle_t_mode() {
  case $1 in
    on)
      grep "OFF" "$WORKSPACE" && sed -i 's/OFF/ON/' || echo "ON" >> "$WORKSPACE"
      for win in $windows; do
        if [[ "$win" != "$sticky_win" ]]; then
          xdo hide $win
        fi
      done
      bspc desktop -l monocle 2 > /dev/null
      ;;

    off)
      sed -i 's/ON/OFF/' "$WORKSPACE"
      for win in $windows; do
        if [[ "$win" != "$sticky_win" ]]; then
          xdo show $win
        fi
      done
      bspc desktop -l tiled 2 > /dev/null
      ;;
  esac

  xdo id -rd | head -1 | xargs xdo activate
  bspc node -n biggest.local 2 > /dev/null
}

function slide_window {
  case $1 in
    next)
      echo next >> "$WORKSPACE" 
      new_window=$(xdo id -rd | head -1)
      [[ "$new_window" == "$sticky_win" ]] && \
      new_window=$(xdo id -rd | head -2)
      ;;

    prev)
      grep next "$WORKSPACE" && sed -i 's/next/prev/' "$WORKSPACE" 
      new_window=$(xdo id -rd | tail -1)
      [[ "$new_window" == "$sticky_win" ]] && \
      new_window=$(xdo id -rd | tail -2)
      ;;
  esac

  xdo hide "$cur_window"
  xdo show "$new_window"
}

function main {
  case $1 in
    --nav)
      shift
      window=$(xdo id -rd | head -1)
      slide_window $1
      ;;
    
    --toggle)
      shift
      if grep "ON" "$WORKSPACE"; then
        toggle_t_mode off
      else
        toggle_t_mode on
      fi
      ;;
    
      *) 
        : 
        ;;
    esac
}

main $@
