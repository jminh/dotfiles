
" vim-rooter will unset &autochdir if it's set because the plugin supersedes the options' functionality.
" You can always invoke vim-rooter manually with <Leader>cd.

" By default you don't need to do anything: vim-rooter will change the working directory automatically.
" To stop vim-rooter changing directory automatically, add this to your .vimrc:
let g:rooter_manual_only = 1

" have vim-rooter locally change directory (:lcd) instead of changing directory (:cd)
let g:rooter_use_lcd = 1
