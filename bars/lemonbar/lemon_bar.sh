#!/bin/bash
#
# Pipes the actual lemonbar and its modules into the lemonbar binary.

source ${LEMON_PATH}/lib/lemon_utils.sh
source ${TLBX_PATH}/tlbx_monitors_functions.sh
utils::source_modules

mon=$(count_monitors)
max=5
cur=0

declare -A modules
modules=([left]="clock bspwm" [center]="xwindow" [right]="bluetooth wifi battery")

_clock=""
_bspwm=""
_xwindow=""
_bluetooth=""
_wifi=""
_battery==""


function init_refresh {
  _clock_refresh=$clock_refresh
  _bspwm_refresh=$bspwm_refresh
  _xwindow_refresh=$xwindow_refresh
  _bluetooth_refresh=$bluetooth_refresh
  _wifi_refresh=$wifi_refresh
  _battery_refresh=$battery_refresh
}          
           
function update() {
  if [[ $cur -gt 0 ]]; then
    for bar in "${!modules[@]}"; do
      for mod in ${modules[$bar]}; do
        refresh=_${mod}_refresh
        val=${!refresh} # evals var into a variable and stores its value
        if [[ $cur -eq $val ]]; then 
          eval $refresh=$((${!refresh}*2))
        fi
      done
    done
  else
    _clock=$(clock)
    _bspwm=$(bspwm)
    _xwindow=$(xwindow)
    _bluetooth=$(bluetooth)
    _wifi=$(wifi)
    _battery=$(battery)
  fi

  left_modules="%{l}${_clock} ${_bspwm}"
  center_modules="%{c}${_xwindow}"
  right_modules="%{r}${_bluetooth}  ${_wifi}  ${_battery}"

  if [[ $cur -lt 60 ]]; then 
    cur=$((cur+1)) 
  else 
    init_refresh
    cur=0
  fi

  bar="${left_modules} ${center_modules} ${right_modules}"
  [[ $mon -gt 1 ]] && echo -e "%{S0}${bar}%{S1}${bar}" || echo -e "${bar}"
}

function main() {
  init_refresh
  while true; do
    update
    sleep 1s &
    wait
  done
}

main
