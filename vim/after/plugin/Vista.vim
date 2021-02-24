let g:vista#renderer#enable_icon = 0
let g:vista_sidebar_width = 30
let g:vista_update_on_text_changed = 0
let g:vista_update_on_text_changed_delay = 50
let g:vista_cursor_delay = 50

let g:vista_fold_toggle_icons = ["+ ", "- "] 
let g:vista_icon_indent = ["> ", "|_ "] "Group Indentation Symbol and then their children Indentation Symbol
let g:vista_echo_cursor = 0
let g:vista_highlight_whole_line = 0

hi VistaTag cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE
hi VistaPublic cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#d400bc guibg=NONE
hi VistaProtected cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#4db6ac guibg=NONE
hi VistaPrivate cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#588383 guibg=NONE

let g:vista_default_executive = 'ctags'

"let g:vista_ctags_cmd = {
"     \ 'haskell': 'hasktags -o - -c',
"     \ }

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one (ctags) for these filetypes when using `:Vista` without
" specifying the executive. If I wish to use an LSP.
"let g:vista_executive_for = {
"  \ 'cpp': 'vim_lsp',
"  \ 'php': 'vim_lsp',
"  \ 'pandoc': 'markdown',
"  \ 'markdown': 'toc',
"  \ }

"let g:vista_fzf_preview = ['right:50%'] "FZF Size and Direction
"let g:vista_sidebar_position = "vertical botright"

"In case render enable icon is 1, one can specify icons to groups
"The default icons can't be suitable for all the filetypes, you can extend it as you wish.
"let g:vista#renderer#icons = {
"\   "function": "\uf794",
"\   "variable": "\uf71b",
"\  }

