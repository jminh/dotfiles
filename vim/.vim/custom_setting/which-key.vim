
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

let g:which_key_map.b = { 'name' : '+buffer' }
let g:which_key_map.b.b = ['Buffers'   , 'fzf-buffer']
let g:which_key_map.b.p = ['bprevious' , 'previous-buffer']
let g:which_key_map.b.n = ['bnext'     , 'next-buffer']
let g:which_key_map.b.h = ['Startify'  , 'home-buffer']
let g:which_key_map.b.d = ['bd'        , 'delete-buffer']
let g:which_key_map.b.f = ['bfirst'    , 'first-buffer']
let g:which_key_map.b.l = ['blast'     , 'last-buffer']

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : ['resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : ['resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

autocmd VimEnter * call which_key#register(',', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
