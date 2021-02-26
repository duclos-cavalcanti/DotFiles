function __cf_utils_print -a prefix content color -d "Prints variable to prompt." 
  set_color --bold ffffff
  echo -e -n -s "$prefix"

  set_color --bold $color
  echo -e -n -s "$content"

  set_color normal
end
