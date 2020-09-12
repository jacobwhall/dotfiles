" make sure vim-plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Install/load vimtex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
" let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Initialize plugin system
call plug#end()



" Use edge color scheme: https://github.com/sainnhe/edge
set termguicolors
colorscheme edge
"
" Use happy_hacking color scheme: https://github.com/yorickpeterse/happy_hacking.vim
"colorscheme happy_hacking

" Disable compatibility with vi
set nocompatible

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
