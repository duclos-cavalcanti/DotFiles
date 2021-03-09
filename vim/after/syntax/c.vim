syntax match regexClosers "[:()\[\]{}]"
syntax match regexOperator "[-+=]"
syntax match regexOps "[&|][&|]"
syntax match regexExclam "[\!]"
syntax match regexIO "[<>][<>]"
syntax match regexDColon "\;"

hi regexClosers cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#d400bc guibg=NONE
hi regexOperator cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#00bcd4 guibg=NONE
hi regexDColon cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#00bcd4 guibg=NONE
hi regexOps cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#00bcd4 guibg=NONE
hi regexIO cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#fb4934 guibg=NONE
hi regexExclam cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#00bcd4 guibg=NONE
