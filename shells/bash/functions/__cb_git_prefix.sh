#!/bin/bash
#
# Git prompt prefix module.

function __cb_git_prefix {
  local git_flag=$(git rev-parse --is-inside-work-tree 2>/dev/null | grep true)
  local prefix=" on "
  
  if [[ -n "$git_flag" ]]; then
    echo -e "$prefix"
  fi
}
