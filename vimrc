" Disable compatibility mode
set nocompatible

" Initialize Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tpope/vim-fugitive'
Plugin 'w0ng/vim-hybrid'
Plugin 'JuliaLang/julia-vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-unimpaired'
Plugin 'nelstrom/vim-visual-star-search'

" All of your Plugins must be added before the following line
call vundle#end()

syntax on
filetype plugin indent on

set nojoinspaces
" set expandtab
" set shiftwidth=4

" Indicate git branch on status line (taken from :help fugitive-statusline)
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set background=dark
colorscheme hybrid

" Double the window width
function DoubleWidth()
  if has('gui_running')
    let g:winposx=getwinposx()
    let g:winposy=getwinposy()
  endif
  let &columns=2*(&columns + &foldcolumn) + 1
endfunction
nmap <Leader>wd :call DoubleWidth()<CR>

" Restore old width
function HalfWidth()
  let &columns=(&columns - 1)/2 - &foldcolumn
  if has('gui_running')
    execute 'winpos '.g:winposx.' '.g:winposy
  endif
endfunction
nmap <Leader>wh :call HalfWidth()<CR>

" Select GUI font
if has('gui_gtk2')
  set guifont=Droid\ Sans\ Mono\ 10
endif
if has('gui_macvim')
  set guifont=Monaco:h10
  set noantialias
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
