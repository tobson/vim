" Not sure setlocal is the right command here
setlocal textwidth=78
setlocal nofoldenable
setlocal spell spelllang=en_us

" If running on osx, enable sync with skim
if has('macunix')
  let g:vimtex_view_method = 'skim'
endif

set wildignore+=*.pdf,*.aux,*.bbl,*.blg,*.fls,*.log,*.lox,*Notes.bib,*.out
set wildignore+=*.synctex.gz,*.tex.latexmain,*.fdb_latexmk

