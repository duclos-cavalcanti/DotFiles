#!/bin/bash
#
# Battery script module for lemonbar.

function battery {
  . ${LEMON_PATH}/lib/lemon_utils.sh
  while true; do
    b_num=0
    b_info=$(acpi -b 2>/dev/null | grep "Battery $b_num")
    b_perc=$(echo "$b_info" | awk '{ print $4 }')
    b_perc_num=$(echo $b_perc | cut -d '%' -f1)

    battery=""
    if [[ "$b_perc_num" -lt 20  ]]; then
      icon=" "
    elif [[ "$b_perc_num" -lt 40  ]]; then
      icon=" "
    elif [[ "$b_perc_num" -lt 60  ]]; then
      icon=" "
    else
      icon=" "
    fi

    battery="$icon"
    echo "B${battery}"
    sleep 30s
  done
}
