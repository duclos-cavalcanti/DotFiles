function __cf_docker_prompt -d "Docker prompt."
    set -l C_DOCKER_PROMPT "DOCKER "
    set -l C_DOCKER_COLOR 3168a0
    set -l C_DOCKER_PREFIX "residing at "

    [ -f /.dockerenv ] && \
    __cf_utils_print $C_DOCKER_PREFIX $C_DOCKER_PROMPT $C_DOCKER_COLOR
end
