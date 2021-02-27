#!/bin/bash
#
# Python env prompt module.

function __cb_pyenv_prompt() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    local venv=$(python --version | cut -d ' ' -f2)
    local venv=$(printf "%s" "venv $venv")
    echo -e "$venv "
  fi
}
