if exists("C_PROJECT") " In case inspecting header file of a C project
    setlocal filetype=c
    source ~/.config/vim/ftplugin/c.vim
    source ~/.config/vim/indent/c.vim
endif

inoreabbrev <buffer> and &&
inoreabbrev <buffer> or \|\|

inoreabbrev <buffer> #i #include
inoreabbrev <buffer> #d #define

