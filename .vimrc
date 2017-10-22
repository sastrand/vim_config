"""""""""""""""""""""""""
" for Vundle
"
"""""""""""""""""""""""""

set nocompatible    " for iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" lets Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            
filetype plugin indent on 

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

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
"set si    " smart-indent
