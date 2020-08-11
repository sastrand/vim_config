"------------------------------------------------------------------------------
"                                Vundle
"------------------------------------------------------------------------------
set nocompatible    " for iMproved
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'git://git.wincent.com/command-t.git'
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
" Automatically wraps lines
set textwidth=79
" To the tintinnabulation that so musically wells
" What a world of solemn thought their monody compels
set noerrorbells visualbell t_vb= 
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
" Uses Nerdtree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Closes Nerdtree if it would be the only buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"------------------------------------------------------------------------------
"                            Spell Checking
"------------------------------------------------------------------------------
set spelllang=en

"------------------------------------------------------------------------------
"                                Other
"------------------------------------------------------------------------------
"maps <control + w> twice in insert mode to moving to the next viewport
imap <C-w><C-w> <esc><C-w><C-w>
