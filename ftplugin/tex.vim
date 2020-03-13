" Not sure setlocal is the right command here
setlocal textwidth=78
setlocal nofoldenable
setlocal spell spelllang=en_us

" Don't spell check comments in tex files
let g:tex_comment_nospell=1

" Specify which syntax checkers to use
let g:syntastic_tex_checkers = ['chktex']

" If running on osx, enable sync with skim
if has('macunix')
  let g:vimtex_view_method = 'skim'
  let g:vimtex_view_skim_reading_bar = 0
endif

" Ignore certain file types when doing wild card completion
set wildignore+=*.pdf,*.aux,*.bbl,*.blg,*.fls,*.log,*.lox,*.out,*.toc
set wildignore+=*.synctex.gz,*.tex.latexmain,*.fdb_latexmk,*Notes.bib

