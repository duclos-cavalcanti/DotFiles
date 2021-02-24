#!/usr/bin/env bash
# Helper functions for the lemonbar modules.

bg="#222d32"
bg_alt="#00bcd4"
fg="#ffffff"
fg_alt="#7c818c"
problem="#fb4934"

padding=" "

function _format() {
    if [[ $# -eq 3 ]]; then
        text=$1
        background=$2
        foreground=$3
        echo "%{B$background}%{F$foreground} $1 %{B-}%{F-}"

    elif [[ $# -eq 2 ]]; then
        text=$1
        foreground=$2
        echo "%{B$bg}%{F$foreground} $text %{B-}%{F-}"

    else
        text=$1
        echo "%{B$bg}%{F$fg} $text %{B-}%{F-}"
    fi
}

function _font() {
    text=$1
    font=$2
    echo "%{T${font}}${text}%{T-}"
}

function _padding() {
    text=$1
    echo "${padding}${text}${padding}"
}

function _source_modules() {
    modules=~/.config/lemonbar/modules
    for mod in $(ls $modules); do
        source ${modules}/${mod}
    done
}
