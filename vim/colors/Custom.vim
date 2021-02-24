"        Name: Custom
"     Creator: Daniel Duclos-Cavalcanti 
"     License: GNU General Public License v2.0 (see: LICENSE)
"  Repository: dotfiles

" Description:

highlight clear
set background=dark

if version > 580
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'Custom'
set background=dark

"Default Color, also changes Background
hi Normal cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#ffffff guibg=NONE

"Documentation
hi Comment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE
hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=#588383

"Constants or Variables
hi Constant cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi String cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#4db6ac guibg=NONE
hi Character cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#d400bc guibg=NONE
hi Number cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#4db6ac guibg=NONE
hi Boolean cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#4db6ac guibg=NONE
hi Float cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#4db6ac guibg=NONE

"Identifiers are any user names given to variables, function names etc
hi Identifier cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Function cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE                            

"PreProcessors Defines, Includes, etc
hi PreProc cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#588383 guibg=NONE

"Types 
hi Type cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Typedef cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Structure cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi StorageClass cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE

"Statements, Syntax
hi Statement cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Conditional cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Repeat cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Label cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Operator cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#d400bc guibg=NONE
hi Exception cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#d400bc guibg=NONE
hi Keyword cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00bcd4 guibg=NONE
hi Ignore cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#d400bc guibg=NONE

"Special terms like \n
hi Special cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#d400bc guibg=NONE
hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00bcd4 guibg=NONE    

"Pmenu, serves to customize the pop up menus
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#d400bc guibg=#ffffff
hi PmenuSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=#00bcd4 
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#ffffff
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=#ffffff 

"Wildmenu
hi WildMenu cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#ffffff guibg=NONE

"Parenthesis
hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#fb4934 guibg=NONE

"Spelling
hi SpellBad cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#fb4934 guibg=NONE
hi SpellCap cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#d400bc guibg=NONE
hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#d400bc guibg=NONE

"Cursor
hi Cursor cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

"Columns
hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#2f3d44

"Folds
hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE   
hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE    

"VertSplit, Columns that separate vertical splits
hi VertSplit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE    

"Line Number Related
hi LineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE
hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00bcd4 guibg=NONE

"NonTEXT like whitespace and End of Buffer
hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE    

"QuickFix
hi! QuickFixLine cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=NONE guibg=NONE    

"Visual
hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#263238 guibg=#ffffff    

"Search
hi Search cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#263238 guibg=#ffffff    
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#263238 guibg=#ffffff    

"Messages
hi ErrorMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#fb4934 guibg=NONE
hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE    
hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00bcd4 guibg=NONE    
hi MsgArea cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE    
hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE    

"Yes/No Questions
hi! Question cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE    

"Terminal
hi Terminal cterm=NONE ctermfg=NONE ctermbg=0 guibg=#222d32 guifg=#ffffff
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
let g:terminal_ansi_colors = [
  \ '#ffffff', '#d400bc', '#00bcd4', '#00bcd4',
  \ '#00bcd4', '#d400bc', '#4db6ac', '#ffffff',
  \ '#7c818c', '#d400bc', '#00bcd4', '#00bcd4',
  \ '#00bcd4', '#d400bc', '#4db6ac', '#ffffff'
\]

"Diffs
hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00bcd4 guibg=NONE
hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#fb4934 guibg=NONE
hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#d400bc guibg=NONE
hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE

"Directory
hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=NONE    

"Title
hi Title cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00bcd4 guibg=NONE    

"Statusline
hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7c818c guibg=NONE
hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#2f3d44

hi EmptyStatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi ModeStatusLine cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#ffffff guibg=#2f3d44
hi GitStatusLine cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#ffffff guibg=#2f3d44
hi LineStatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=#2f3d44
hi LinterStatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=#2f3d44
hi BufferStatusLine cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#ffffff guibg=#2f3d44
hi FileTypeStatusLine cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#ffffff guibg=#2f3d44
hi FileStatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=#2f3d44

"Tabline
hi TabLineSel cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#ffffff guibg=#2f3d44
hi TabLineFill cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#fb4934 guibg=#2f3d44
hi TabLine cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#7c818c guibg=#2f3d44

hi TabSelectedSpace cterm=BOLD ctermfg=NONE ctermbg=NONE gui=BOLD guifg=#222d32 guibg=#ffffff
hi TabSpace cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffffff guibg=#2f3d44

hi! link EmptyTabLine EmptyStatusLine
