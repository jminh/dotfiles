" search the tags file and load it automatically when vim start up
set tags=./.tags;/

" for ctags
nnoremap <C-\> :vsp<CR>:exec("tag ".expand("<cword>"))<CR>
