" Not sure setlocal is the right command here
setlocal textwidth=78
setlocal nofoldenable
setlocal spell spelllang=en_us

" Missing Auctex macro
call IMAP('`w', '\omega', 'tex')

" Disable placeholders
let g:Imap_UsePlaceHolders = 0

" Latex-Suite settings
let Tex_UseMakefile=0
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_ViewRule_pdf = 'Skim'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_AutoFolding=0
let g:Tex_Env_equation = "\\begin{equation}\<CR><++>\<CR>\\end{equation}"
let g:Tex_Env_align = "\\begin{align}\<CR><++>\<CR>\\end{align}"
