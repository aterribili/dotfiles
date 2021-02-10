call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/html5.vim'
Plug 'luochen1990/rainbow'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'nanotech/jellybeans.vim'
Plug 'fuadsaud/vim-midje', { 'branch': 'fix-contains' }
Plug 'paulojean/sort-quire.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'm00qek/nvim-contabs'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fholiveira/vim-clojure-static',  { 'for': 'clojure', 'branch': 'hack-update'}
Plug 'clojure-vim/async-clj-highlight'
Plug 'jreybert/vimagit'
Plug 'leafgarland/typescript-vim'
Plug 'kassio/neoterm'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-sleuth'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'iCyMind/NeoSolarized'
Plug 'stephpy/vim-yaml'

call plug#end()
