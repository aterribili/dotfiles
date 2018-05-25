command! -bang -nargs=? -complete=dir Files
 \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=* Ag
 \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview('right:50%'), <bang>0)
