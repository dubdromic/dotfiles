execute pathogen#infect()

set nocompatible

syntax on
filetype on
filetype plugin indent on
colorscheme solarized

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
set re=1
set t_ut= " Work around tmux messing with background colors
set undodir=~/.tmp/
set undofile
set undolevels=1000
set undoreload=10000
set backupdir=~/.tmp/
set directory=~/.tmp/
set backup
set noeb vb t_vb=
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set path=**
set wildchar=<Tab> wildmenu wildmode=full

let mapleader=","

map <leader>n :e ~/notes<cr>
map <leader>t :Files<cr>
map <leader>g :GFiles?<cr>
map <leader>b :Buffers<cr>
map <leader>f :exec 'Ag' expand('<cword>')<cr>
map <leader>d :bd<cr>
map <leader>m :make<cr>

autocmd BufNewFile,BufRead notes set filetype=todo
autocmd BufNewFile,BufRead * set foldmethod=manual
autocmd BufNewFile,BufRead notes set foldmethod=syntax
autocmd Filetype todo nnoremap ,<tab> :.s/TODO/DONE/g<cr>
autocmd Filetype todo nnoremap <tab> za
