set tags=./.tags;,.tags

set statusline+=%{gutentags#statusline()}

let g:gutentags_define_advanced_commands = 1

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')


" config project root markers.
let g:gutentags_project_root = ['.root']

" forbid gutentags adding gtags databases
let g:gutentags_auto_add_gtags_cscope = 0

autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

