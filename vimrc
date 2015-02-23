if $COLORTERM=='gnome-terminal'
  set t_Co=256
endif

syntax on
filetype plugin indent on

set nojoinspaces
" set expandtab
" set shiftwidth=4

" Indicate git branch on status line (taken from :help fugitive-statusline)
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" colorscheme hybrid

if has('mouse')
  set mouse=nv
endif

if has('gui_running')
  set guifont=Monaco:h10
  set noantialias
  set guioptions-=r
  set guioptions-=L
  set vb
  " Double the window width
  map <Leader>wd
        \ :let g:winposx=getwinposx() \|
        \ :let g:winposy=getwinposy() \|
        \ :let &columns=2*(&columns + &foldcolumn) + 1<CR><CR>
  " Restore old width
  map <Leader>wh
        \ :let &columns=(&columns - 1)/2 - &foldcolumn \|
        \ :execute 'winpos '.g:winposx.' '.g:winposy<CR>
endif

" Don't spell check comments in tex files
let g:tex_comment_nospell=1

" snipmate info
let g:snips_author="Tobias Heinemann"
let g:snips_email="tobias.heinemann@gmail.com"
let g:snips_github="https://github.com/tobson"

" Don't syntax check Fortran files
let g:loaded_syntastic_fortran_gfortran_checker=1
