" Explicitly use dark background
" this is important because tmux will default to light for some reason
set background=dark

" Use happy_hacking color scheme: https://github.com/yorickpeterse/happy_hacking.vim
colorscheme happy_hacking

" Disable compatibility with vi
set nocompatible

" Only indent with tabs
" :autocmd FileType python setlocal noexpandtab
:set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab 

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

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

" use mouse mode
" set mouse=n

autocmd BufEnter *.py :syntax sync fromstart

" add lsp plugin
packadd lsp

call LspOptionsSet({'autoHighlight': v:true, 'noNewlineInCompletion': v:true, 'useTabInCompletion': v:true })

call LspAddServer([ #{ filetype: ['python'], path: '/home/jacob/.miniforge3/bin/pylsp', args: [] } ])

" rust-analyzer installed using `rustup component add rust-analyzer`
call LspAddServer([ #{ name: 'rustlang', filetype: ['rust'], path: '/home/jacob/.cargo/bin/rust-analyzer', args: [], syncInit: v:true }])

