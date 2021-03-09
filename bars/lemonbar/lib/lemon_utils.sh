#!/bin/bash
#
# Helper functions for the lemonbar modules.

bg="#222d32"
bg_alt="#00bcd4"
fg="#ffffff"
fg_alt="#7c818c"
primary="#00bcd4"
problem="#fb4934"

underline_color="#00bcd4"

function utils::format_colors() {
  if [[ $# -eq 3 ]]; then
    text=$1
    background=$2
    foreground=$3
    echo -n "%{B$background}%{F$foreground} $1 %{B-}%{F-}"

  elif [[ $# -eq 2 ]]; then
    text=$1
    foreground=$2
    echo "%{B$bg}%{F$foreground} $text %{B-}%{F-}"

  else
    text=$1
    echo "%{B$bg}%{F$fg} $text %{B-}%{F-}"
  fi
}

function utils::set_underline() {
  text="$1"
  echo -n "%{U${underline_color}}${text}%{U-}"
}

function utils::format_font() {
  text=$1
  font=$2
  echo -n "%{T${font}}${text}%{T-}"
}


function utils::format_underline() {
  text="$1"
  echo -n "%{+u}${text}%{-u}"
}

function utils::format_padding() {
  text="$1"
  cnt="$2"
  mode="$3"
  padding=" "

  i="0"
  case "$mode" in 
    l)
      while [ "$i" -lt "$cnt" ]; do
        text="${padding}${text}"
        ((i++))
      done
      ;;
    c)
      while [ "$i" -lt "$cnt" ]; do
        text="${padding}${text}${padding}"
        ((i++))
      done
      ;;
    *|r)
      while [ "$i" -lt "$cnt" ]; do
        text="${text}${padding}"
        ((i++))
      done
      ;;
  esac
  echo -n "$text"
}

function utils::source_modules() {
  modules=~/.config/lemonbar/modules
  for mod in $(ls $modules); do
    source ${modules}/${mod}
  done
}
