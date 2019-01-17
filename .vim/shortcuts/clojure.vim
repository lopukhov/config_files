" --------------------------------------------------------------------
"							Puntuacion
" --------------------------------------------------------------------

" Llaves
inoremap { {}<Esc>i

" Parentesis
inoremap ( ()<Esc>i

" Corchetes
inoremap [ []<Esc>i

" Comillas
inoremap " ""<Esc>i

" --------------------------------------------------------------------
"							Indentacion
" --------------------------------------------------------------------

set expandtab
set tabstop=2			" number of visual spaces per TAB
set shiftwidth=2		" number of spaces in autoindent

" --------------------------------------------------------------------
"							Comandos
" --------------------------------------------------------------------

" Compilar
command Compile ! lein compile
