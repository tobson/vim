" Not sure setlocal is the right command here
setlocal textwidth=78
setlocal nofoldenable
setlocal spell spelllang=en_us

map <silent> <Leader>ls :silent
        \ !/Applications/Skim.app/Contents/SharedSupport/displayline
        \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
        \ "%:p" <CR>
