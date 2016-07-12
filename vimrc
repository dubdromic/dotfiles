execute pathogen#infect()

set nocompatible
set autoindent
set relativenumber
set hidden
set splitbelow
set splitright
set autoindent
set expandtab
set ts=2
set sw=2
set sts=2
set t_Co=256
set background=light

syntax off
filetype on
filetype plugin indent on

set undodir=~/.tmp/
set undofile
set undolevels=1000
set undoreload=10000

set backupdir=~/.tmp/
set directory=~/.tmp/
set backup

set noeb vb t_vb=

" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_user_command = 'ag %s -lU --ignore .git --ignore coverage --hidden --nocolor -g ""'
let g:ctrlp_match_window = 'max:20'
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 0

let mapleader=","

map <leader>t :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>
