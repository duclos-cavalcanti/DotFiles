#!/bin/bash
#
# Python env prompt prefix module.

function __cb_pyenv_prefix() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    local prefix=" via "
    echo -e "$prefix"
  fi
}
