call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'nanotech/jellybeans.vim'
Plug 'fuadsaud/vim-midje', { 'branch': 'fix-contains' }
Plug 'paulojean/sort-quire.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'keith/swift'

"Plug 'clojure-vim/acid.nvim'
"Plug 'fholiveira/vim-clojure-static',  { 'for': 'clojure', 'branch': 'hack-update'} | Plug 'clojure-vim/async-clj-highlight'
"Plug 'guns/vim-sexp', { 'for': 'clojure' } | Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
"Plug 'clojure-vim/async-clj-omni', { 'for': 'clojure' }

call plug#end()
