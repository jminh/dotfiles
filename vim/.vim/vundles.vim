
" ========================================
" Vim plugin configuration
" ========================================
"
" Automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" My Bundles here:
"
" original repos on github
"Plugin 'FuzzyFinder'

Plug 'tweekmonster/startuptime.vim'
Plug 'liuchengxu/vim-which-key'

" appearance {{{
Plug 'mhinz/vim-startify'
" colorscheme
"Plugin 'tomasr/molokai'
"Plugin 'tpope/vim-vividchalk'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-gruvbox8'
  "colorscheme gruvbox8
"Plug 'liuchengxu/space-vim-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/peaksea'
"Plugin 'altercation/vim-colors-solarized'

" Plugin 'yonchu/accelerated-smooth-scroll'

" numbers Vim 7.3+
"Plugin 'myusuf3/numbers.vim'

Plug 'Yggdroot/indentLine'
" map <leader>il :IndentLinesToggle<CR>
" Plugin 'Lokaltog/vim-powerline'
"Plug 'bling/vim-airline' "slow Plug slow slow use vim-neatstatus instead
Plug 'ap/vim-buftabline'
  " vim-buftabline README
  " If you do not already use Airline, you may not want to: it is far heavier
  " than Buftabline, to the point of dragging down performance. C.f. Pretty
  " statuslines vs cursor speed
Plug 'maciakl/vim-neatstatus'

" Plugin 'xsunsmile/showmarks.git'
" }}}

" project {{{
Plug 'tpope/vim-projectionist'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'kien/ctrlp.vim'

"Plugin 'vim-scripts/TaskList.vim'

Plug 'majutsushi/tagbar'
" }}}

" git {{{
"Plugin 'gregsexton/gitv'
"Plugin 'tpope/vim-fugitive'
"Plugin 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
" }}}

" Provides tab completion while inside the “/” search
"Plugin 'vim-scripts/SearchComplete'

" search {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" need python3 support
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_ShortcutB = ''
    " Default value is '<leader>b'.

" :substitute preview
"Plugin 'osyo-manga/vim-over'
"Plugin 'mileszs/ack.vim'
" Plugin 'petdance/ack2'
Plug 'rking/ag.vim'
" (ack, ag, grep in the top level project dir)
"Plugin 'airblade/vim-rooter'
"Plugin 'vim-scripts/EasyGrep'
"Plugin 'Lokaltog/vim-easymotion'
Plug 'justinmk/vim-sneak'
  let g:sneak#label = 1
" Plugin 'unblevable/quick-scope'
"Plug 'google/vim-searchindex'
"Plug 'vim-scripts/IndexedSearch'
  " did not work well with interestingwords
  " it will not automaticlly show 2nd 3rd ... match
  " we need do manual command
  " it works well with vim-scripts/Mark
set shortmess-=S

" usage: https://github.com/bronson/vim-visual-star-search
Plug 'bronson/vim-visual-star-search'
" vim bookmark
Plug 'MattesGroeger/vim-bookmarks'
Plug 'kshenoy/vim-signature', {'on': 'SignatureRefresh'}
" Plugin 'haya14busa/incsearch.vim'
" mimics Ctrl-Shift-F on Sublime Text 2 (depend on ack or ag)
Plug 'dyng/ctrlsf.vim' " slow Plug
" }}}

"Plugin 'vim-scripts/mru.vim'

Plug 'vim-scripts/L9'
" vim-autocomplpop
"Automatic trigger complete popup menu (need L9)
"Plugin 'othree/vim-autocomplpop'


" vim-scripts pythoncomplete
" To use this plugin, make sure ftplugins are enabled, via "filetype plugin
" on".
Plug 'vim-scripts/pythoncomplete'

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'
"Plug 'zxqfl/tabnine-vim'
  " Add a file named .tabnine_root to the root of your project directory.

" Useful for python/vim scripts
"Plugin 'michaeljsmith/vim-indent-object'
"Plugin 'terryma/vim-expand-region'

" syntax {{{
Plug 'w0rp/ale'
let g:ale_sign_column_always = 1
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{ALEGetStatusLine()}
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \}
"let g:ale_linters_explicit = 1

" Syntax checking hacks for vim
"Plugin 'scrooloose/syntastic'
" }}}

" Plugin 'vim-scripts/Conque-Shell'
"Plugin 'acx0/Conque-Shell'

"Plugin 'benmills/vimux'

" code snippet {{{
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"}}}

" LSP {{{
"Plug 'autozimu/LanguageClient-neovim', {
" \ 'branch': 'next',
" \ 'do': 'bash install.sh',
" \ }
"
"let g:LanguageClient_serverCommands = {
"       \ 'c': ['/usr/local/bin/ccls', '--init={"index": {"threads": 2}, "cacheFormat": "json"}'],
"       \ 'cpp': ['/usr/local/bin/ccls', '--init={"index": {"threads": 2}, "cacheFormat": "json"}'],
"       \ }
"
"function SetLSPShortcuts()
"  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
"  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
"  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
"  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
"  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
"  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
"  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
"  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
"  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
"  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
"endfunction()
"
"augroup LSP
"  autocmd!
"  autocmd FileType cpp,c call SetLSPShortcuts()
"augroup END

Plug 'neoclide/coc.nvim', {'branch': 'release'}
set signcolumn=yes

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" }}}

" C/C++ {{{
Plug 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1

Plug 'vim-scripts/a.vim'
Plug 'rhysd/vim-clang-format'
"Plugin 'vim-scripts/cscope.vim'
"Plugin 'SpaceVim/cscope.vim'

" the last one
"Plugin 'steffanc/cscopemaps.vim'
" }}}

" {{{ gtags
Plug 'skywind3000/vim-preview'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
" }}}

" markdown {{{
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
" }}}

" rst {{{
"Plugin 'Rykka/riv.vim'
" }}}

"Plugin 'jceb/vim-orgmode'

" Program {{{
Plug 'tpope/vim-commentary'
"Plugin 'gkz/vim-ls'
" }}}

" imporvements {{{
" Readline style insertion (similar to Emacs key bindings)
"Plugin 'tpope/vim-rsi'
"Plugin 'AndrewRadev/linediff.vim'

Plug 'Raimondi/delimitMate' " slow Plug
" It requires Vim 7.3.885 or above and "if_lua" enabled Vim.
" Plugin 'Shougo/neocomplete.vim'

"Plug 'lfv89/vim-interestingwords'
"Plug 'vim-scripts/Mark'
"Plug 'inkarkat/vim-mark'

" Plugin 'vim-scripts/Mark--Karkat'

" use multiple cursors like Sublime Text editor.
"Plugin 'terryma/vim-multiple-cursors'
" Plugin "vim-scripts/AutoTag.git"
"Plugin 'craigemery/vim-autotag'
"Plugin 'chrisbra/NrrwRgn'
"Plugin 'sjl/gundo.vim'
Plug 'simnalamburt/vim-mundo'
"Plugin 'mbbill/undotree'
"Plugin 'goldfeld/ctrlr.vim'

"Plugin 'bogado/file-line'
"Plugin 'rhysd/clever-f.vim'
" 
Plug 'vim-scripts/lastpos.vim'

"Plug 'vim-scripts/fcitx.vim'
" "}}}

"Plugin 'joonty/vdebug.git'

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

call plug#end()
