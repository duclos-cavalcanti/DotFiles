#!/bin/bash
#
# Git prompt module.

function __cb_git_prompt {
  local git_flag=$(git rev-parse --is-inside-work-tree 2>/dev/null | grep true)
  local git_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n')
  
  if [[ -n "$git_flag" ]]; then
    echo -e "$git_branch"
  fi
}
