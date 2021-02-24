#!/usr/bin/env bash

sounds=$(amixer controls | sed -r "/CARD/!d; s/.*=([0-9]+).*name='([^']+)'.*/printf '%3.0f: %s\\n' '\\1' '\\2'/e" | sort)

echo "$sounds"
