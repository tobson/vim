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

" latex settings
let g:LatexBox_show_warnings=0
let g:tex_comment_nospell=1
if has('macunix')
  let g:LatexBox_viewer="open -a skim"
endif
