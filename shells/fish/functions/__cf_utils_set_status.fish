function __cf_utils_set_status -d "Write out the right prompt"
  set last_status $status
  if test $last_status != 0
    set -g LAST_STATUS $last_status
  else
    set -g LAST_STATUS 0
  end
  set_color normal
end



