set nu

" Show current mode down the bottom
set showmode

" The encoding written to file
set fileencoding=utf-8

" Identation
set smarttab
set cindent
autocmd FileType html,css,json,javascript,sh setlocal ai sw=2 ts=2 sta et fo=croql

" Wrap lines is for fools
set nowrap
set linebreak

" Disable saw files and things like that
set noswapfile
set nobackup
set nowb

" Persistent undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/assets/**
set wildignore+=*.gem
set wildignore+=.tags
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=node_modules/**

" Make ctrlp ignore some directories
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

