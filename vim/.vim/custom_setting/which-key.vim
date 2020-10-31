
nnoremap <Space><Space> :Commands<CR> " FZF

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

" lsp
let g:which_key_map.g = {
      \ 'name' : '+lsp',
      \ 'r' : ['<Plug>(coc-references)'  , 'references']       ,
      \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['<Plug>(coc-definition)'     , 'definition']      ,
        \ 't' : ['<Plug>(coc-type-definition)', 'type-definition'] ,
        \ 'i' : ['<Plug>(coc-implementation)' , 'implementation']  ,
        \ },
      \ }

" bookmark
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:which_key_map.a = { 'name' : '+bookmark' }
let g:which_key_map.a.m = ['BookmarkToggle'   , 'mark']
let g:which_key_map.a.i = ['BookmarkAnnotate'   , 'mark-annotate']
let g:which_key_map.a.a = ['BookmarkShowAll'   , 'mark-list']
let g:which_key_map.a.j = ['BookmarkNext'   , 'mark-next']
let g:which_key_map.a.k = ['BookmarkPrev'   , 'mark-prev']
let g:which_key_map.a.x = ['BookmarkClearAll'   , 'clear-all']

" search
let g:which_key_map.s = { 'name' : '+search' }
let g:which_key_map.s.s = ['Lines'   , 'helm-swoop']

autocmd VimEnter * call which_key#register(',', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKey ','<CR>

" call the guide for keys other than leader
let g:maplocalleader = "\<Space>"
nnoremap <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>
" https://www.reddit.com/r/vim/comments/4ks9le/do_you_use_localleader_if_yes_how/
