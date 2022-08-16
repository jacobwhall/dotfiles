" Use edge color scheme: https://github.com/sainnhe/edge
set termguicolors
colorscheme edge
"
" Use happy_hacking color scheme: https://github.com/yorickpeterse/happy_hacking.vim
"colorscheme happy_hacking

" Disable compatibility with vi
set nocompatible

" Only indent with tabs
" :autocmd FileType python setlocal noexpandtab
:set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab 

" Enable syntax highlighting
syntax on

" Use utf-8 encoding
set encoding=utf-8

" Avoid wrapping a line in the middle of a word
set linebreak

" Add line numbers
set number

" Make line numbers relative
set relativenumber

" Display title of file in GUI terminal
set title
set titlestring=%t%(\ %M%)%(\ (%F)%)%a
