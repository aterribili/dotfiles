" map jj
imap jj <ESC>
imap kk <ESC>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Clear search (ctrl + c)
map <C-c> <ESC>:noh<CR>

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Plugins
nnoremap <space><space> :Files<CR>
noremap <silent> <C-S> :update!<CR>
noremap <silent> <C-F> :Ag<CR>

" Better navigation
nnoremap <bs> <c-^>

" Delete and send to a null register
nnoremap <leader>d "_d

" Open Magit
nnoremap <silent> <C-g> :Magit<CR>

" Exit on term mode
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
tnoremap kk <C-\><C-n>

" Open a terminal in horizontal mode
noremap <silent> <C-e> :split <bar> :resize 20 <bar> :term <CR>

" Close current split
noremap <silent> <C-x> :q<CR>
