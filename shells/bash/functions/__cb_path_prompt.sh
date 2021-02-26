#!/bin/bash
#
# Path prompt module.

function __cb_path_prompt {
  local f_path=$(pwd) 
  local num=$(echo "$f_path" | grep -o '/' | wc -l)
  local l_path=$(echo "$f_path" | cut -d '/' -f${num})

  # 34 is blue
  echo "$l_path"
}
