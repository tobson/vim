runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on

set nojoinspaces
set expandtab

colorscheme hybrid

if has('gui_running')
  set guifont=Monaco:h10
  set noantialias
  set guioptions-=r
  set guioptions+=R
  " Double the window width
  map <Leader>wd
        \ :let g:winposx=getwinposx() \|
        \ :let g:winposy=getwinposy() \|
        \ :let &columns=2*&columns<CR><CR>
  " Restore old width
  map <Leader>wh
        \ :let &columns=&columns/2 \|
        \ :execute 'winpos '.g:winposx.' '.g:winposy<CR>
endif

" make ultisnips stop complaining when it can't start
let g:UltiSnipsNoPythonWarning=0
