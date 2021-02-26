function __cf_char_prompt -d "Command line prompt."
  # '\n ➜  '
  # '\n ✘  '
  # '\n   '

  if test $LAST_STATUS != 0
    set C_CHAR_COLOR fb4934
  else
    set C_CHAR_COLOR 00bcd4
  end

  set -l C_CHAR_PREFIX ""
  set -l C_CHAR_PROMPT "\n➜ "

  __cf_utils_print $C_CHAR_PREFIX $C_CHAR_PROMPT $C_CHAR_COLOR
end
