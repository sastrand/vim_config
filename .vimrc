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

"------------------------------------------------------------------------------
"                                 Tabs
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
autocmd vimenter * NERDTree
"------------------------------------------------------------------------------
"                           Word Count 
"------------------------------------------------------------------------------
let g:word_count="<unknown>"
function WordCount()
	return g:word_count
endfunction
function UpdateWordCount()
	let lnum = 1
	let n = 0
	while lnum <= line('$')
		let n = n + len(split(getline(lnum)))
		let lnum = lnum + 1
	endwhile
	let g:word_count = n
endfunction
" Update the count when cursor is idle in command or insert mode.
" Update when idle for 1000 msec (default is 4000 msec).
set updatetime=1000
augroup WordCounter
	au! CursorHold,CursorHoldI * call UpdateWordCount()
augroup END
" Set statusline, shown here a piece at a time
highlight User1 ctermbg=gray guibg=green ctermfg=black guifg=black
set statusline=%1*			" Switch to User1 color highlight
set statusline+=%<%F			" file name, cut if needed at start
set statusline+=%M			" modified flag
set statusline+=%y			" file type
set statusline+=%=			" separator from left to right justified
set statusline+=\ %{WordCount()}\ words,
set statusline+=\ %l/%L\ lines,\ %P	" percentage through the file
