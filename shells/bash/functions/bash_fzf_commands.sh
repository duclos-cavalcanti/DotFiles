#!/bin/bash
#
# Custom fzf functions to be used as my own custom bindings.

function fzf_history() {
  his=$(builtin fc -lnr -2147483648 | fzf -i --layout=reverse-list --height=10)
  eval $his
}

function fzf_cd() {
  his=$(builtin fc -lnr -2147483648 | fzf -i --layout=reverse-list --height=10)
  eval $his
}
