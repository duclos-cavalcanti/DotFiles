#!/bin/bash
#
# Simple char prompt module.

function __cb_char_prompt {
  # local char "\n✘ "
  # local char="\n➜ "
  local char="\n-> "
  echo -e "${char}"
}
