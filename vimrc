" Disable compatibility mode
set nocompatible

" Load plugins
call plug#begin()

Plug 'VundleVim/Vundle.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tpope/vim-fugitive'
Plug 'w0ng/vim-hybrid'
Plug 'JuliaLang/julia-vim'
Plug 'LaTeX-Box-Team/LaTeX-Box' " Perhaps switch to lervag/vimtex?
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'nelstrom/vim-visual-star-search'
Plug 'ctrlpvim/ctrlp.vim'

" Add plugins to &runtimepath
call plug#end()

set nojoinspaces

" Indicate git branch on status line (taken from :help fugitive-statusline)
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set background=dark
colorscheme hybrid

" Double the window width
function! DoubleWidth()
  if has('gui_running')
    let g:winposx=getwinposx()
    let g:winposy=getwinposy()
  endif
  let &columns=2*(&columns + &foldcolumn) + 1
endfunction
nmap <Leader>wd :call DoubleWidth()<CR>

" Restore old width
function! HalfWidth()
  let &columns=(&columns - 1)/2 - &foldcolumn
  if has('gui_running')
    execute 'winpos '.g:winposx.' '.g:winposy
  endif
endfunction
nmap <Leader>wh :call HalfWidth()<CR>

" http://blog.sanctum.geek.nz/local-vimrc-files/
if filereadable(glob('~/.vimrc.local'))
  source ~/.vimrc.local
endif

if has('gui_macvim')
  autocmd! GUIEnter * set vb t_vb=
endif

if has('gui_running')
  set guioptions-=r
  set guioptions-=L
  set guioptions-=m
  set guioptions-=T
endif

" Don't spell check comments in tex files
let g:tex_comment_nospell=1

" snipmate info
let g:snips_author="Tobias Heinemann"
let g:snips_email="tobias.heinemann@gmail.com"
let g:snips_github="https://github.com/tobson"

" Don't syntax check Fortran files
let g:loaded_syntastic_fortran_gfortran_checker=1
