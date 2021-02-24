function fish_space -e fish_postexec
  set length 0
  # Move to the end of the line. This will NOT wrap to the next line.
  echo -ne "\033["{$COLUMNS}"C"
  # Move back $length columns.
  echo -ne "\033["{$length}"D"

  # Finally, print output.
  echo -e ""
end

