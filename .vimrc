source ~/.vim/apparience.vim

let mapleader = ","
set nocompatible

syntax on

filetype plugin indent on

set path+=**

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set smartcase "Case sensitive

"TEMP DIRS
set directory=~/.vim/swaps
set backupdir=~/.vim/backups
set backupskip=/tmp/*
set backupskip+=/private/tmp/*
set undodir=~/.vim/undos

set undofile

"INSERTS
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"MAPPINGS
nmap <F9> :call system('xclip -selection clipboard', @0)<CR>

"CMDS
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

