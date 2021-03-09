#!/bin/bash
#
# Launches lemonbar and its modules.

. ${LEMON_PATH}/lib/lemon_utils.sh

lemon_bar_fifo=~/.config/lemonbar/tmp/lemon.fifo

killall -q lemonbar
killall -q lemonbar.sh

font_main='Ubuntu Mono:style=regular:size=11'
font_alt='Ubuntu Mono:style=regular:size=9'
font_icons='Ubuntu Nerd Font:style=bold:size=11'

bg="#222d32"
fg="#ffffff"

function lemon::fifo() {
  [ -e "$lemon_bar_fifo" ] && rm "$lemon_bar_fifo"
  mkfifo $lemon_bar_fifo
}

function lemon::modules() {
  xwindow > "$lemon_bar_fifo" &
  wifi > "$lemon_bar_fifo" &
  bluetooth > "$lemon_bar_fifo" &
  battery > "$lemon_bar_fifo" &
  clock > "$lemon_bar_fifo" &
  bspwm > "$lemon_bar_fifo" &
}

function lemon::bar() {
  while read -r line; do
    item=${line#?}
    select=$(echo "${line}" | head -c 1)

    case "$select" in
      W) # wm - bspwm desktops
        _wm="${item}"
        _wm=$(utils::format_padding "$_wm" "2" "l")
        _wm=$(utils::format_font "${_wm}" "2")
        ;;
      L) # wm - bspwm layouts
        _layout="${item}"
        _layout=$(utils::format_padding "$_layout" "2" "l")
        _layout=$(utils::format_font "${_layout}" "1")
        ;;
      X) # xwindow
        _xwin="${item}"
        _xwin=$(utils::format_font "${_xwin}" "1")
        ;;
      T) # bluetooth
        _bluetooth="${item}"
        _bluetooth=$(utils::format_padding "$_bluetooth" "3" "l")
        _bluetooth=$(utils::format_font "$_bluetooth" "3")
        ;;
      I) # wifi
        _wifi="${item}"
        _wifi=$(utils::format_padding "$_wifi" "3" "l")
        _wifi=$(utils::format_font "$_wifi" "3")
        ;;
      B) # battery
        _battery="${item}"
        _battery=$(utils::format_padding "$_battery" "3" "l")
        _battery=$(utils::format_font "$_battery" "3")
        ;;
      C) # clock
        _clock="${item}"
        _clock=$(utils::format_padding "$_clock" "3" "c")
        _clock=$(utils::format_font "$_clock" "1")
        ;;
    esac

    bar="%{l}${_wm}${_layout}%{c}${_xwin}%{r}${_bluetooth}${_wifi}${_battery}${_clock}"
    bar=$(utils::set_underline "$bar")

    printf  "%s\n" "${bar}"
  done
}

function main() {
  utils::source_modules
  lemon::fifo
  lemon::modules

  lemon::bar < "$lemon_bar_fifo" \
  | lemonbar -p -g x30+0+0 \
                -F "${fg}" -B "${bg}" -u 3 \
                -o +0 -f "${font_main}" -o -1 -f "${font_alt}" -o +1 -f "${font_icons}" \
                -n statusbar \
  | /usr/bin/bash &

  # Needed for fullscreen hiding of lemonbar
  until bar_id=$(xdo id -a 'statusbar'); do
    sleep 0.1s
  done

  xdo below -t $(xdo id -n root) $bar_id &
}

main
