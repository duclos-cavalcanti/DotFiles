function __cf_pyenv_prompt -d "Pyenv prompt."
    set -l C_PYENV_COLOR d400bc
    set -l C_PYENV_PREFIX "via "

    if test -n "$VIRTUAL_ENV"
        set venv (python --version | cut -d ' ' -f2)
        set -l C_PYENV_PROMPT (printf '%s ' "venv $venv")

        __cf_utils_print $C_PYENV_PREFIX $C_PYENV_PROMPT $C_PYENV_COLOR
    end
end
