" always init  in relative number and absolute line number of current line
set relativenumber number
set cursorline
set ruler

" styling
colorscheme default
syntax enable
set laststatus=2

filetype plugin on
filetype indent on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
