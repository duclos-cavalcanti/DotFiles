function __cf_timer_prompt -d "Timer prompt."
    __cf_timer_settings
    __cf_timer_value

    set -l C_TIMER_PROMPT "took $C_CMD_DURATION"
    set -l C_TIMER_PREFIX ""
    set -l C_TIMER_COLOR 7c818c

    __cf_utils_print $C_TIMER_PREFIX $C_TIMER_PROMPT $C_TIMER_COLOR
end



