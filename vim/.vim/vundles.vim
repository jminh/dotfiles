" ========================================
" Vim plugin configuration
" ========================================

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
"Plug 'FuzzyFinder'

" appearance {{{
Plug 'mhinz/vim-startify'
" colorscheme
Plug 'tomasr/molokai'
Plug 'tpope/vim-vividchalk'
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'

" Plug 'yonchu/accelerated-smooth-scroll'

" numbers Vim 7.3+
Plug 'myusuf3/numbers.vim'

Plug 'Yggdroot/indentLine'
" map <leader>il :IndentLinesToggle<CR>
" Plug 'Lokaltog/vim-powerline'
Plug 'bling/vim-airline'

" Plug 'xsunsmile/showmarks.git'
" }}}

" project {{{
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'

"Plug 'vim-scripts/TaskList.vim'

Plug 'majutsushi/tagbar'
" }}}

" git {{{
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" }}}

" Provides tab completion while inside the “/” search
Plug 'vim-scripts/SearchComplete'

" search {{{
" :substitute preview
Plug 'osyo-manga/vim-over'
Plug 'mileszs/ack.vim'
" Plug 'petdance/ack2'
Plug 'rking/ag.vim'
" (ack, ag, grep in the top level project dir)
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/EasyGrep'
Plug 'Lokaltog/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'vim-scripts/IndexedSearch'

" usage: https://github.com/bronson/vim-visual-star-search
Plug 'bronson/vim-visual-star-search'
" vim bookmark
Plug 'MattesGroeger/vim-bookmarks'
" Plug 'haya14busa/incsearch.vim'
" mimics Ctrl-Shift-F on Sublime Text 2 (depend on ack or ag)
Plug 'dyng/ctrlsf.vim'
" }}}

Plug 'vim-scripts/mru.vim'

Plug 'vim-scripts/L9'
" vim-autocomplpop
"Automatic trigger complete popup menu (need L9)
Plug 'othree/vim-autocomplpop'

" vim-scripts pythoncomplete
" To use this plugin, make sure ftplugins are enabled, via "filetype plugin
" on".
"Plug 'vim-scripts/pythoncomplete'

" YouCompleteMe
" Plug 'Valloric/YouCompleteMe'

" Useful for python/vim scripts
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'

" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'

" Plug 'vim-scripts/Conque-Shell'
Plug 'acx0/Conque-Shell'

Plug 'benmills/vimux'

" C/C++ {{{
Plug 'vim-scripts/a.vim'
Plug 'rhysd/vim-clang-format'
" }}}

" markdown {{{
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" }}}

" rst {{{
Plug 'Rykka/riv.vim'
Plug 'jceb/vim-orgmode'
" }}}

" Program {{{
Plug 'tpope/vim-commentary'
Plug 'gkz/vim-ls'
" }}}

" imporvements {{{
" Readline style insertion (similar to Emacs key bindings)
Plug 'tpope/vim-rsi'
Plug 'AndrewRadev/linediff.vim'

Plug 'Raimondi/delimitMate'
" It requires Vim 7.3.885 or above and "if_lua" enabled Vim.
" Plug 'Shougo/neocomplete.vim'

Plug 'vim-scripts/Mark'
" Plug 'vim-scripts/Mark--Karkat'

" use multiple cursors like Sublime Text editor.
Plug 'terryma/vim-multiple-cursors'
" Plug "vim-scripts/AutoTag.git"
Plug 'craigemery/vim-autotag'
Plug 'chrisbra/NrrwRgn'
Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'
Plug 'goldfeld/ctrlr.vim'

Plug 'bogado/file-line'
Plug 'rhysd/clever-f.vim'
" 
Plug 'vim-scripts/lastpos.vim'

Plug 'vim-scripts/fcitx.vim'
" "}}}

Plug 'joonty/vdebug.git'

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

call plug#end()
