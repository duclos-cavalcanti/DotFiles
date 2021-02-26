#!/bin/bash
#
# Utils function that prints formatted text according to the args $1,$2 and $3

function __cb_utils_print {
  # Colors
  #
  # Black   30
  # Red     31
  # Green   32
  # Yellow  33
  # Blue    34
  # Purple  35
  # Cyan    36
  # White   37
  #
  # Attributes
  # 
  # Normal      0
  # Bold/Light  1
  # Dim Text    2
  # Underlined  4
  # Blinking    5
  # Reversed    7
  # Hidden      8

  # \033 marks the beginning of a color tag, \m marks the end
  # \[\033[${Attr}:${COLOR}m\]

  if [ $# -eq 3 ]; then
    local prefix="$1"
    local text="$2"
    local color="$3"
  else
    local text="$1"
    local color="$2"
  fi

  prefix="\[\033[1;37m\]${prefix}"
  text="\[\033[1;${color}m\]${text}"

  [ $# -eq 3 ] \
    && echo -n "${prefix} ${text}" \
    || echo -n "${text}"
}
