#!/usr/bin/env bash
# Pipes the actual lemonbar and its modules into the lemonbar binary.

source ${LEMON_PATH}/lib/lemon_utils.sh
source ${TLBX_PATH}/tlbx_monitors_functions.sh

mon=$(count_monitors)
max=60
cur=0

_clock=""
_bspwm=""
_xwindow=""
_bluetooth=""
_wifi=""
_battery==""

function update() {
    orientations="left center right"

    left="clock bspwm"
    center="xwindow"
    right="bluetooth wifi battery"

    # if [[ $cur -gt 0 ]]; then
    #     for orient in $orientations; do
    #         for module in $orient; do
    #             eval tmp=_${module}_refresh
    #             if [[ $cur -eq $tmp ]]; then
    #                 eval tmp=$($module)
    #                 eval _${module}=$tmp
    #             fi
    #         done
    #     done
    # else
    #     _clock=$(clock)
    #     _bspwm=$(bspwm)
    #     _xwindow=$(xwindow)
    #     _bluetooth=$(bluetooth)
    #     _wifi=$(wifi)
    #     _battery=$(battery)
    # fi

    _clock=$(clock)
    _bspwm=$(bspwm)
    _xwindow=$(xwindow)
    _bluetooth=$(bluetooth)
    _wifi=$(wifi)
    _battery=$(battery)


    left_modules="%{l}${_clock} ${_bspwm}"
    center_modules="%{c}${_xwindow}"
    right_modules="%{r}${_bluetooth}  ${_wifi}  ${_battery}"

    [[ $cur -ne 60 ]] && cur=$((cur+1)) || cur=0
    bar="${left_modules} ${center_modules} ${right_modules}"

    [[ $mon -gt 1 ]] && echo -e "%{S0}${bar}%{S1}${bar}" || echo -e "${bar}"
}

_source_modules
while true; do
    update
    sleep 1s &
    wait
done
