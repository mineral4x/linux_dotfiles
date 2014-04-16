colorscheme molokai
set nocompatible
set clipboard=unnamed
set encoding=utf-8 nobomb
set hlsearch
set showmode
set number
set incsearch
set ignorecase
set smartcase
set scrolloff=5
set scrolljump=5
" Allow backspace in insert mode
set backspace=indent,eol,start
set autoread
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
set list listchars=tab:\ \ ,trail:·
set history=1000
set backup
if !isdirectory(expand("$HOME/.vim/backups"))
  call mkdir(expand("$HOME/.vim/backups"), 'p')
endif
set backupdir=$HOME/.vim/backups
set backupskip=/tmp/*,/private/tmp/*
if !isdirectory(expand("$HOME/.vim/undo"))
  call mkdir(expand("$HOME/.vim/undo"), 'p')
endif
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undolevels=10000
set wildmenu
set wildmode=longest:list,full
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif
set nowrap
syntax on
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
