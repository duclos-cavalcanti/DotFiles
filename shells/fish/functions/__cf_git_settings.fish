function __cf_git_settings -d "Sets the git icon values."
    set -g __fish_git_prompt_showinformative_status 'yes'
    set -g __fish_git_prompt_showdirtystate 'yes'
    set -g __fish_git_prompt_showstashstate 'yes'
    set -g __fish_git_prompt_showuntrackedfiles 'yes'
    set -g __fish_git_prompt_char_upstream_prefix '|'
    set -g __fish_git_prompt_char_upstream_ahead ">>"
    set -g __fish_git_prompt_char_upstream_behind "<<"
    set -g __fish_git_prompt_char_upstream_diverged "^^"
    set -g __fish_git_prompt_char_upstream_equal "="
    set -g __fish_git_prompt_char_stagedstate "~"
    set -g __fish_git_prompt_char_dirtystate "x"
    set -g __fish_git_prompt_char_untrackedfiles "?"
    set -g __fish_git_prompt_char_conflictedstate "!"
    set -g __fish_git_prompt_char_cleanstate ""
end

