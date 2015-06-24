
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" Hit v to select one character
" Hit vagain to expand selection to word
" Hit v again to expand to paragraph
" Hit <C-v> go back to previous selection if I went too far

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

