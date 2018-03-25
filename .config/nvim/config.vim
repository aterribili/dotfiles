set nu

set background=dark
colors jellybeans
let g:badwolf_darkgutter = 1

source $HOME/.config/nvim/color.vim

" Show current mode down the bottom
set showmode

" The encoding written to file
set fileencoding=utf-8

" Identation
set smarttab
set cindent
autocmd FileType html,css,json,javascript,sh setlocal ai sw=2 ts=2 sta et fo=croql
autocmd FileType haskell source ~/.config/nvim/lsp.vim

" Wrap lines is for fools
set nowrap
set linebreak

" Disable saw files and things like that
set noswapfile
set nobackup
set nowb

" Global taboptions
set tabstop=2
set shiftwidth=2
set expandtab

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

" Setup Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Automatically start language servers.
let g:LanguageClient_autostart=1

let g:LanguageClient_serverCommands = {
  \ 'haskell': ['hie', '--lsp'],
  \ }

"" Setup deoplete
let g:deoplete#enable_at_startup = 1
"let g:deoplete#keyword_patterns = {}
"let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
"
"let g:deoplete#file#enable_buffer_path = 1
