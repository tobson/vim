function! WhichTab(filename)
    " Try to determine whether file is open in any tab.  
    " Return number of tab it's open in
    " If it's open in multiple tabs, return the leftmost
    let bufNo = bufnr('\(^\|\/\)' . a:filename . '$')

    for tabNo in range(1, tabpagenr("$"))
        for bufInTab in tabpagebuflist(tabNo)
            if (bufInTab == bufNo)
                return tabNo
            endif
        endfor
    endfor

    return 0

endfunction
