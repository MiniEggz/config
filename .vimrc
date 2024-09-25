" syntax and colour scheme
syntax on

" disable wrapping
set nowrap

" use 4 spaces for tab
set expandtab
set shiftwidth=4
set softtabstop=4

" smart indent
filetype plugin indent on
set autoindent
set smartindent

" highlight searches
set hlsearch
set incsearch

" use system clipboard
set clipboard=unnamedplus

" file format
set fileformat=unix

" line numbers
set number

" enable autocomplete
set wildmode=longest,list,full

" disable auto commenting on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
