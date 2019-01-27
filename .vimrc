"------------------------------------------------------------------------------
"                                Vundle
"------------------------------------------------------------------------------
set nocompatible    " for iMproved
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" lets Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
" All of your Plugins must be added before the following line
call vundle#end()            
filetype plugin on

"------------------------------------------------------------------------------
"                             Status Line
"------------------------------------------------------------------------------
set noruler
set laststatus=2
set statusline=%f                                     "relative filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'},       "file encoding
set statusline+=%{&ff}]                               "file format
set statusline+=%m                                    "modified flag
set statusline+=%r                                    "read only flag
set statusline+=%y                                    "filetype
set statusline+=%=                                    "left/right separator
set statusline+=%c,                                   "cursor column
set statusline+=%l/%L                                 "cursor line/total lines
set statusline+=\ %P                                  "percent through file

"------------------------------------------------------------------------------
"                              Appearance
"------------------------------------------------------------------------------
colorscheme gruvbox
set background=dark
set number
syntax enable
set hlsearch
set colorcolumn=80
" To the tintinnabulation that so musically wells...
" What a world of solemn thought their monody compels!
set noerrorbells visualbell t_vb= 
set textwidth=80
" best of all line numbering worlds
set number relativenumber
set nu rnu

"------------------------------------------------------------------------------
"                        Tabs (the hot dog kind)
"------------------------------------------------------------------------------
set autoindent
set tabstop=4
" With expandtab set, tab will insert the spaces
set expandtab
" Shiftwidth controls columns of indentation
set shiftwidth=4

"------------------------------------------------------------------------------
"                           Nerd Commenter
"------------------------------------------------------------------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left 
let g:NERDDefaultAlign = 'left'
" Allow commenting on empty lines
let g:NERDCommentEmptyLines = 1

"------------------------------------------------------------------------------
"                              Nerd Tree
"------------------------------------------------------------------------------
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

