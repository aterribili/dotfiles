set formatexpr=LanguageClient_textDocument_rangeFormatting()

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gu :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <leader>cf :call LanguageClient_textDocument_codeAction()<CR>

highlight link ALEError SpellBad
highlight link ALEWarning SpellCap
highlight link ALEInfo ALEWarning
highlight ALEErrorSign ctermbg=18 ctermfg=1
highlight link ALEWarningSign todo
highlight link ALEInfoSign ALEWarningSign
