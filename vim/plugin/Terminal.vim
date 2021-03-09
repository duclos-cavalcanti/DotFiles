let s:TerminalON = 0
function TerminalManager(mode)
    let l:bufnr = bufnr('%')
    let l:bufname = bufname()

	let buflist = []
	call extend(buflist, tabpagebuflist(tabpagenr()))

    if !s:TerminalON
        if a:mode == "pane" | execute "split | term ++curwin ++kill=term ++rows=15"
        elseif a:mode == "v_current" | execute "vertical term ++kill=term"
        elseif a:mode == "h_current" | execute "split | term ++curwin ++kill=term"
        elseif a:mode == "current" | execute "term ++curwin ++kill=term"
        elseif a:mode == "tab" | execute "tab term ++kill=term"
        endif

        let s:TerminalON = 1
    else
        if a:mode == "pane" | execute "split | resize 15 | buffer fish"
        elseif a:mode == "v_current" | execute "vsplit | buffer fish"
        elseif a:mode == "h_current" | execute "split | buffer fish"
        elseif a:mode == "current" | execute "buffer fish"
        elseif a:mode == "tab" | execute "tabnew | buffer fish"
        endif
    endif
endfunction
