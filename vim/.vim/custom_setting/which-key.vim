
let g:which_key_use_floating_win = 1
"set timeoutlen=500

let g:which_key_map =  {}

" gtags
let g:which_key_map.c = { 'name' : '+gtags-cscope' }
let g:which_key_map.c.s = 'Find symbol (reference) under cursor'
let g:which_key_map.c.g = 'Find symbol definition under cursor'
let g:which_key_map.c.d = 'Functions called by this function'
let g:which_key_map.c.c = 'Functions calling this function'
let g:which_key_map.c.t = 'Find text string under cursor'
let g:which_key_map.c.e = 'Find egrep pattern under cursor'
let g:which_key_map.c.f = 'Find file name under cursor'
let g:which_key_map.c.i = 'Find files #including the file name under cursor'
let g:which_key_map.c.a = 'Find places where current symbol is assigned'

autocmd VimEnter * call which_key#register(',', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
