function fish_timer
    set -g  fish_command_timer_enabled 0
    set -g  fish_command_timer_status_enabled 0
    set -g  fish_command_timer_millis 0
    
    set -g  fish_command_timer_success_color white
    set -g  fish_command_timer_fail_color red
    
    set -g  fish_command_timer_time_format '%H:%M:%s'
    
    set -g fish_command_timer_export_cmd_duration_str 1
end
