" --------------------------------------------------------------------
"							Funciones
" --------------------------------------------------------------------

" Print
inoremap ;p fmt.Println()<Esc>i

" Input
inoremap ;s fmt.Scan()<Esc>i

" --------------------------------------------------------------------
"							Puntuacion
" --------------------------------------------------------------------

" Llaves
inoremap { {<Return><Esc>^i}<Esc>ko

" Parentesis
inoremap ( ()<Esc>i

" Corchetes
inoremap [ []<Esc>i

" Comillas
inoremap " ""<Esc>i
