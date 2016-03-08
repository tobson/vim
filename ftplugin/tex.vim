" Not sure setlocal is the right command here
setlocal textwidth=78
setlocal nofoldenable
setlocal spell spelllang=en_us

" If running on osx, enable sync with skim
if has('macunix')
  let g:vimtex_view_general_viewer
        \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
  let g:vimtex_view_general_options = '-r @line @pdf'
endif
" Ignore certain file types when doing wild card completion
set wildignore+=*.pdf,*.aux,*.bbl,*.blg,*.fls,*.log
set wildignore+=*.synctex.gz,*.tex.latexmain,*.fdb_latexmk

