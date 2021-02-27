#!/bin/bash
#
# Battery script for the polybar battery module.

percentage=$(acpi | cut -d ',' -f2)
number=$(echo $percentage | cut -d '%' -f1)


if [[ $number -lt 20  ]]; then
  format=" "
  format="%{T4}${format}"
  echo "%{F#ff5252}${format}"

elif [[ $number -lt 40  ]]; then
  format=" "
  format="%{T4}${format}"
  echo "$format"

elif [[ $number -lt 60  ]]; then
  format=" "
  format="%{T4}${format}"
  echo "$format"

else
  format=" "
  format="%{T4}${format}"
  echo "$format"
fi

