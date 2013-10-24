runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on

set nojoinspaces
set expandtab

if has('gui_running')
  colorscheme hybrid
  set guifont=Monaco:h10
  set noantialias
endif

" make ultisnips stop complaining when it can't start
let g:UltiSnipsNoPythonWarning=0
