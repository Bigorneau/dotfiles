set nocompatible

" basic
set number
syntax on
set ruler
"set cursorline
set showcmd
set showmode
set history=100
set showmatch
set hlsearch
set incsearch
set ignorecase

filetype on
filetype plugin indent on

set magic
set wrap
set linebreak

set list
set listchars=tab:→\ ,trail:·

" indent
set ai
set autoindent
set smartindent
set cindent
set tw=80

" lang
"set spelllang =en
"set spell
"set spellsuggest =5

" menu
set wildmenu
set wildmode =list:longest,list:full
set wildignore =
set wildignore+=*.o,*.obj,*~,*.pyc
set wildignore+=*.png,*.jpg,*.gif

" colors
" colorscheme personal3
" colorscheme sorcerer
" colorscheme leo
" set background=dark
colorscheme desert


" file
set encoding=utf8
set fileencodings=utf-8,iso8859-1
set ffs=unix,dos,mac
set autoread

" misc
set noswapfile
set nobackup
set nowb
set noerrorbells
set novisualbell
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

" scripts
if has("autocmd")
    filetype plugin indent on
        autocmd FileType text setlocal textwidth=78

    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
        \ endif
endif

" links
" http://vi-improved.org/vimrc.html
