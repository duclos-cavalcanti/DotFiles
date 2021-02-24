let g:ycm_global_extra_conf = '$HOME/Documents/dotfiles/vim/ycm_conf/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_echo_current_diagnostic = 1
let g:ycm_auto_hover = ""                                                               "Disable hover Doc
let g:ycm_disable_for_files_larger_than_kb = 0

let g:ycm_error_symbol = 'E'
let g:ycm_warning_symbol = 'W'

hi YcmErrorSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#fb4934 guibg=NONE
hi YcmWarningSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#fb4934 guibg=NONE

hi YcmErrorSection cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#ff0000
hi YcmWarningSection cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#7c818c

"Controls(Partially) hover signature highlight group of being completed function
hi YCMInverse cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

"Disables above highlighted signature pop up ui or inline documentation
"let g:ycm_disable_signature_help=1

