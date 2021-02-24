if !exists("C_PROJECT")
    let g:C_PROJECT=1
    augroup C_PROJECT
      autocmd!
      autocmd BufRead,BufNewFile *.h set filetype=c
    augroup END
endif

inoreabbrev <buffer> and &&
inoreabbrev <buffer> or \|\|

inoreabbrev <buffer> #i #include
inoreabbrev <buffer> #d #define
