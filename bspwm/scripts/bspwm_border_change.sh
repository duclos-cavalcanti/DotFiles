#!/usr/bin/env bash

# Example border arguments
# "st-256-color"
# "spotterm"
# "alsaterm"
# "scratchterm"
# "Zathura"
# "tabbed_st"
        
function expand_border_class {
    window_class=$1
    xdo id -N $window_class | xargs -I{} bspc config -n {} border_width 0
}

function expand_border_name {
    window_name=$1
    xdo id -n $window_name | xargs -I{} bspc config -n {} border_width 0
}

if [[ "$#" -eq 1 ]]; then
    window=$1
    $(expand_border_class $window) 
    [[ $? ]] && $(expand_border_name $window)
else
    for window in "$@"; do
        $(expand_border_class $window) 
        [[ $? ]] && $(expand_border_name $window)
    done
fi

