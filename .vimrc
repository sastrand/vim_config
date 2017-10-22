"""""""""""""""""""""""""
" for Vundle
"
"""""""""""""""""""""""""

"""""""""""""""""""""""""
" general
"
"""""""""""""""""""""""""
filetype plugin on 
filetype indent on

set hlsearch     " highlight on search
set noerrorbells visualbell t_vb=  " turns off the tinitibulation of the...
set number       " numbered lines

"""""""""""""""""""""""""
" colors & fonts
"
"""""""""""""""""""""""""

syntax enable

try
    colorscheme gruvbox
catch
endtry

set background=dark

"""""""""""""""""""""""""
" indentation
"
"""""""""""""""""""""""""

set shiftwidth=4
set tabstop=4

set ai    " auto-indent
set si    " smart-indent

