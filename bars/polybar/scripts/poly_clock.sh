#!/bin/bash
#
# Date script module for Polybar.

clock_refresh=60

function clock() {
  format="%{T6}"
  format_reset="%{T-}"
  hour=$(date +%H)
  minute=$(date +%M)

  clock="${hour}:${minute}"

  echo -n "${format}${clock}${format_reset}"
}

function main {
  clock
}

main
