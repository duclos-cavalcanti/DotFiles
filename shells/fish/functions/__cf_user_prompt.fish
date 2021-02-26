function __cf_user_prompt -d "User prompt."
  set -l USER_PROMPT (whoami)
  set -l USER_COLOR 00bcd4
  set -l USER_PREFIX ""

  __cf_utils_print $USER_PREFIX "$USER_PROMPT "  $USER_COLOR
end
