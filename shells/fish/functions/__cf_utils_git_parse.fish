function __cf_utils_git_parse -d "Initial parsing of the fish_git_prompt."
  set -l temp_var ""
  set temp_var (printf '%s ' (fish_git_prompt))
  set temp_var (string split -m 1 '(' $temp_var)
  set temp_var (string split -m 1 -r ')' $temp_var)
  set temp_var (string trim --right "$temp_var")

  set -g C_GIT_PROMPT $temp_var
end
