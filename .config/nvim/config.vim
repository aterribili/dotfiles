set nu

let g:badwolf_darkgutter = 1
let mapleader = ","

" Show current mode down the bottom
set showmode

" The encoding written to file
set fileencoding=utf-8

" Enable the cursor line
set cursorline

" clipboard copy
set clipboard=unnamedplus

" Identation
set smarttab
set cindent
autocmd FileType html,css,json,javascript,base,ruby setlocal ai sw=2 ts=2 sta et fo=croql
autocmd FileType haskell source ~/.config/nvim/lsp.vim

" add yaml stuffs
"au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Wrap lines is for fools
set nowrap
set linebreak

" Disable swap files
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
set wildignore+=*.lsp/*
set wildignore+=*sass-cache*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/assets/**
set wildignore+=*.gem
set wildignore+=.tags
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=node_modules/**
set wildignore+=target/**

" Setup Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

" Strip whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

"" Setup deoplete
let g:deoplete#enable_at_startup = 1
let g:contabs#project#locations = [
  \ { 'path': '~/dev', 'depth': 1, 'git_only': 1 },
  \ { 'path': '~/.config/nvim', 'depth': 0, 'git_only': 0 },
  \ { 'path': '~/', 'depth': 0, 'git_only': 0 }
  \]

"command to change the current tab's workingdir
command! -nargs=1 -complete=dir EP call contabs#project#edit(<q-args>)

"command to open a new tab with some workingdir
command! -nargs=1 -complete=dir TP call contabs#project#tabedit(<q-args>)

"invoke fzf with the list of projects configured in g:contabs#project#locations
"the enabled hotkeys are { 'ctrl-t': 'tabedit', 'ctrl-e, <cr>': 'edit' }
nnoremap <silent> <C-p> :call contabs#project#select()<CR>

"invoke fzf with the list of buffers of current tab's workingdir
"the enabled hotkeys are { 'ctrl-t': 'tabedit', 'ctrl-e, <cr>': 'edit', 'ctrl-v': 'vsp', 'ctrl-x': 'sp' }
nnoremap <silent> <C-b> :call contabs#buffer#select()<CR>

"break lines
set wrap

" Split opening
set splitbelow
set splitright

" Use deoplete.
let g:deoplete#enable_at_startup = 1
