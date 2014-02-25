" basic
set number
syntax on
set ruler
"set cursorline
set showcmd
set showmode
set history=50
set showmatch
set hlsearch
set incsearch
set ignorecase

filetype plugin on
filetype indent on
filetype on

set magic
set wrap
set linebreak
set wrapmargin=2

set list
set listchars=nbsp:¬,eol:$,tab:→\ ,trail:·,extends:»,precedes:«

" indent
set autoindent
"set smartindent
"set cindent
set textwidth=0 " 0 ~ 79

" cindent
set formatoptions=tcqlron
set cinoptions=:0,l1,b1,g0,t0

" lang
"set spelllang=en
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
if &diff
	colorscheme personal3
else
	colorscheme desert
endif
highlight NonText ctermfg=1

" file
set encoding=utf8
set fileencodings=utf-8,iso8859-1
set ffs=unix,dos,mac
set autoread

" backup
set nobackup

" misc
set noswapfile
set nowb
set noerrorbells
set novisualbell
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

" autocmd
" autocmd FileType c,cpp,python,sh autocmd BufWritePre <buffer> :%s/\s\+$//e

" links
" http://vi-improved.org/vimrc.html
