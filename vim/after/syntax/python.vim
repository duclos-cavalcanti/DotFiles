syntax keyword pythSelf self

syntax match regexComma "\,"
syntax match regexClosers "[:()\[\]{}]"
syntax match regexQuoteString "[\"]"
syntax match regexClosersString "[{}]"
syntax match regexOperator "[-+=\/]"

syntax match regexMethod "\.\w*[^()\[\.\,]"
syntax match regexPreMethod "\w*\." contains=regexMethod

syntax region regexString start=+"+ end=+"+ keepend contains=regexClosersString,regexQuoteString

"Matches words in between the parentheses, however uses the regexCloses
"to color the characters chosen on skip.
" syntax region regexArguments matchgroup=regexClosers start=+(+ skip=+()+ end=+)+ contains=regexComma,regexMethod,regexClosers,String keepend
 
hi regexOperator cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#d400bc guibg=NONE
hi regexClosers cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#d400bc guibg=NONE

hi regexPreMethod cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE
hi regexMethod cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#00bcd4 guibg=NONE

hi regexArguments cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE
hi regexComma cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#ffffff guibg=NONE

hi regexQuoteString cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#fb4934 guibg=NONE

hi pythSelf cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#fb4934 guibg=NONE

"Overwriting pythonFunction highlight group that controls highlighting
"of function names.
hi pythonFunction cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#00bcd4 guibg=NONE

hi def link regexString String
hi def link regexClosersString regexClosers

