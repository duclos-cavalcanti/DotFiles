let s:Gbranch=""
function! FetchGitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! GitStatus()
    let l:branchname = s:Gbranch
    let l:hi = "%#GitStatusLine#"

    if strlen(l:branchname) > 0  
        let s:leftSL_len += strlen(GitIcon()) + strlen(l:branchname)
        return l:hi . GitIcon() . l:branchname 
    else 
        return ''
    endif
endfunction

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    let l:hi = "%#LinterStatusLine#"
    if l:counts.total == 0
        return ''
    else
        return l:hi . ' w:e ' . l:all_non_errors . ':' . l:all_errors
    endif
endfunction

let s:last_mode = "" 
function ModeStatus()
    let l:hi = "%#ModeStatusLine#"
    let l:mode = mode()                                                                                                                                                                                  

    if l:mode !=# s:last_mode "Mode change                                                                                                                                                               
        let s:last_mode = l:mode                                                                                                                                                                           
    endif
                                                                                                                                                                                                           
    if l:mode ==# "n" 
        let l:str = "NORMAL"                                                                                                                                                            

    elseif l:mode ==# "i"
        let l:str = "INSERT"                                                                                                                                                            

    elseif l:mode ==# "c" 
        let l:str = "COMMAND"                                                                                                                                                            

    elseif l:mode ==# "s" 
        let l:str = "SELECT"                                                                                                                                                            

    elseif l:mode ==# "S" 
        let l:str = "SELECT"                                                                                                                                                            

    elseif l:mode ==# "t" 
        let l:str = "TERMINAL"                                                                                                                                                            

    elseif l:mode ==# "R" 
        let l:str = "REPLACE"                                                                                                                                                           

    elseif l:mode ==# "v" 
        let l:str = "VISUAL"                                                                                                                                                            

    elseif l:mode ==# "V" 
        let l:str = "V·LINE"                                                                                                                                                            

    elseif l:mode ==# "\<C-v>"
        let l:str = "V·BLOCK"                                                                                                                                                           
    else
        let l:str = "UNKNOWN"
    endif                                                                                                                                                                                                

    let s:leftSL_len += strlen(l:str)
    return l:hi . ' ' . l:str
endfunction

function! FilePath()
    let l:hi = '%#BufferStatusLine#'
    let s:middleSL_len += strlen(expand('%:f'))
    return l:hi . '%f'
endfunction

function! FileName()
    let l:hi = '%#BufferStatusLine#'
    let s:leftSL_len += strlen(expand('%:t'))
    return l:hi . '%t'
endfunction

function! FileEncoding()
    return " " . &fenc==""?&enc:&fenc . " "
endfunction

function! FileType()
    let l:filetype_var = &filetype
    let l:hi = '%#FileTypeStatusLine#'
    let s:middleSL_len += strlen(l:filetype_var)
    return l:hi . l:filetype_var
endfunction

function! LineRatio()
    let l:line = line(".")
    let l:str = '%#LineStatusLine#'

    if l:line < 10          | let l:str .= "   " . "l %l/%L"
    elseif l:line < 100     | let l:str .= "  "  . "l %l/%L"
    elseif l:line < 1000    | let l:str .= " "   . "l %l/%L"
    elseif l:line < 10000   | let l:str .= ""    . "l %l/%L"
    endif

    return l:str
endfunction

function! ColumnRatio()
    let l:Col = virtcol("$")
    let l:col = virtcol(".")

    let l:str = '%#LineStatusLine#'
    if l:col < 10          | let l:str .= "   " . "c %c" 
    elseif l:col < 100     | let l:str .= "  "  . "c %c"
    elseif l:col < 1000    | let l:str .= " "   . "c %c"
    endif

    return l:str
endfunction

function! FindMiddleWin()
    let l:middle = winwidth(0)
    return round(l:middle / 2)
endfunction

let s:leftSL_len = 0
function! LeftStatusLine()
    let l:str = ""

    let l:str .= '%#EmptyStatusLine#'
    let l:str .=  ReturnSpace(3)

    let l:str .= ModeStatus()
    let l:str .= " - "
    let l:str .= FileType()
    let l:str .= ExtraSpace()
    let l:str .= FilePath()
    let l:str .= GitStatus()

    "3 from ReturnSpace + 3 from ' - '
    let s:leftSL_len += 6
    return l:str
endfunction

let s:middleSL_len = 0
function! MiddleStatusLine(len_status)
    let l:str = ""
    let l:test = ""

    let l:mid = FindMiddleWin()

    let l:test .= FileType()
    let l:test .= ExtraSpace()
    let l:test .= FilePath()

    let s:middleSL_len += 1 "+1 from ExtraSpace()

    let l:num_spaces = float2nr(l:mid - s:leftSL_len - (round(s:middleSL_len/2)))
    if l:num_spaces > 0
        let l:str .= ReturnSpace(l:num_spaces)
        let l:str .= l:test
    else
        let l:str = ""
    endif


    let s:leftSL_len = 0
    let s:middleSL_len = 0
    "return l:str
    return ""
endfunction

function! RightStatusLine()
    "Inverts statusline
    let l:str = "%="

    let l:str .= LinterStatus()
    let l:str .= ExtraSpace()
    let l:str .= LineRatio()
    let l:str .= ColumnRatio()
    let l:str .= ExtraSpace()

    return l:str
endfunction

function! StatusLine()
    let s = ""
    let s .= LeftStatusLine()
    let s .= MiddleStatusLine(strlen(s))
    let s .= RightStatusLine()
    return s
endfunction

augroup ARRIVEBUFFER
    autocmd!
    autocmd BufNewFile,BufRead * let s:Gbranch=FetchGitBranch()
augroup END

"STATUS LINE
set statusline+=%!StatusLine()
