#!/bin/bash
#
# An example script to visualize some of the tools around bash debugging.

#set -xv
set -x

# PS4='-> ${LINENO}: ${BASH_SHOURCE} : ${FUNCNAME[0]}'
PS4='-> ${LINENO}: '

FOO="BAR"
read -p "Name: " NAME

echo "$NAME"
echo "$FOO"

echo "$BASH_SOURCE"
