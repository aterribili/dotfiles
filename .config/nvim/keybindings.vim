" map jj t
imap jj <ESC>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

map <C-n> :NERDTreeToggle<CR>

" Clear search (ctrl + c)
map <C-c> <ESC>:noh<CR>

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Plugins
nnoremap <space><space> :Files<CR>
noremap <silent> <C-S> :update<CR>
noremap <silent> <C-F> :Ag<CR>

" Better navigation
nnoremap <bs> <c-^>
