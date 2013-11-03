" Not sure setlocal is the right command here
setlocal textwidth=78
setlocal nofoldenable
setlocal spell spelllang=en_us

" latex-box settings
let g:LatexBox_show_warnings=0
" If running on osx, enable sync with skim
if has('macunix')
  let g:LatexBox_viewer="open -a skim"
  map <silent> <Leader>ls :silent
        \ !/Applications/Skim.app/Contents/SharedSupport/displayline
        \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
        \ "%:p" <CR>
endif
" Ignore certain file types when doing wild card completion
set wildignore+=*.pdf,*.aux,*.bbl,*.blg,*.fls,*.log
set wildignore+=*.synctex.gz,*.tex.latexmain,*.fdb_latexmk

