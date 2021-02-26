function __cf_git_prompt -d "Git prompt."
  __cf_utils_git_settings
  __cf_utils_git_parse

  set -l C_GIT_COLOR fb4934
  set -l C_GIT_PREFIX "on "

  set -l C_GIT_BRANCH ""
  set -l C_GIT_STATUS ""

  set -l C_GIT_PROMPT_FORMATTED

  set -l count (echo "$C_GIT_PROMPT" | wc -w)
  
  # No status available, just format branch.
  if [ $count -eq 1 ]
    set C_GIT_PROMPT_FORMATTED (printf '%s ' "$C_GIT_PROMPT")
  else
    for i in (seq $count)
      # Formats Branch.
      if [ $i -eq 1 ]
        set temp_var (echo "$C_GIT_PROMPT" | cut -d ' ' -f$i) #
        set C_GIT_BRANCH "$temp_var"
  
        # Formats Status per Status together.
      else if [ $i -lt $count ] || [ $i -eq $count ]
        set temp_var (echo "$C_GIT_PROMPT" | cut -d ' ' -f$i)
        set C_GIT_STATUS "$C_GIT_STATUS $temp_var"
        set C_GIT_STATUS (string trim --left "$C_GIT_STATUS")
      end
    end

    set C_GIT_PROMPT_FORMATTED (printf '%s [%s] ' "$C_GIT_BRANCH" "$C_GIT_STATUS")
  end

  [ -n "$C_GIT_PROMPT" ] && \
  __cf_utils_print $C_GIT_PREFIX $C_GIT_PROMPT_FORMATTED $C_GIT_COLOR
end
