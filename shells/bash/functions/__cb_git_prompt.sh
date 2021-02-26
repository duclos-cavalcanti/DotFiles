#!/bin/bash
#
# Git prompt module.

function __cb_git_prompt {
  local git_flag=$(git rev-parse --is-inside-work-tree 2>/dev/null | grep true)
  local git_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n')
  local prefix="on"
  
  if [[ -n "$git_flag" ]]; then
    # 31 is red
    echo -e "on $git_branch"
  fi
}
