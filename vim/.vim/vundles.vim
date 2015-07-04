
" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle

filetype off " Vundle required!

" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
Plugin 'FuzzyFinder'

" appearance {{{
Plugin 'mhinz/vim-startify'
" colorscheme
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-vividchalk'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'

" Plugin 'yonchu/accelerated-smooth-scroll'

" numbers Vim 7.3+
Plugin 'myusuf3/numbers.vim'

Plugin 'Yggdroot/indentLine'
" map <leader>il :IndentLinesToggle<CR>
" Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'

" Plugin 'xsunsmile/showmarks.git'
" }}}

" project {{{
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

Plugin 'vim-scripts/TaskList.vim'

Plugin 'majutsushi/tagbar'
" }}}

" git {{{
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" }}}

" Provides tab completion while inside the “/” search
Plugin 'vim-scripts/SearchComplete'

" search {{{
" :substitute preview
Plugin 'osyo-manga/vim-over'
Plugin 'mileszs/ack.vim'
" Plugin 'petdance/ack2'
Plugin 'rking/ag.vim'
" (ack, ag, grep in the top level project dir)
Plugin 'airblade/vim-rooter'
Plugin 'vim-scripts/EasyGrep'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'vim-scripts/IndexedSearch'

" usage: https://github.com/bronson/vim-visual-star-search
Plugin 'bronson/vim-visual-star-search'
" vim bookmark
Plugin 'MattesGroeger/vim-bookmarks'
" Plugin 'haya14busa/incsearch.vim'
" mimics Ctrl-Shift-F on Sublime Text 2 (depend on ack or ag)
Plugin 'dyng/ctrlsf.vim'
" }}}

Plugin 'vim-scripts/mru.vim'

Plugin 'L9'
" vim-autocomplpop
"Automatic trigger complete popup menu (need L9)
Plugin 'othree/vim-autocomplpop'


" vim-scripts pythoncomplete
" To use this plugin, make sure ftplugins are enabled, via "filetype plugin
" on".
Plugin 'vim-scripts/pythoncomplete'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Useful for python/vim scripts
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'terryma/vim-expand-region'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" Plugin 'vim-scripts/Conque-Shell'
Plugin 'acx0/Conque-Shell'

Plugin 'benmills/vimux'

" C/C++ {{{
Plugin 'vim-scripts/a.vim'
Plugin 'rhysd/vim-clang-format'
" }}}

" markdown {{{
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" }}}

" rst {{{
Plugin 'Rykka/riv.vim'
" }}}

" Program {{{
Plugin 'tpope/vim-commentary'
Plugin 'gkz/vim-ls'
" }}}

" imporvements {{{
" Readline style insertion (similar to Emacs key bindings)
Plugin 'tpope/vim-rsi'
Plugin 'AndrewRadev/linediff.vim'

Plugin 'Raimondi/delimitMate'
" It requires Vim 7.3.885 or above and "if_lua" enabled Vim.
" Plugin 'Shougo/neocomplete.vim'

Plugin 'vim-scripts/Mark'
" Plugin 'vim-scripts/Mark--Karkat'

" use multiple cursors like Sublime Text editor.
Plugin 'terryma/vim-multiple-cursors'
" Plugin "vim-scripts/AutoTag.git"
Plugin 'craigemery/vim-autotag'
Plugin 'chrisbra/NrrwRgn'
Plugin 'sjl/gundo.vim'
Plugin 'mbbill/undotree'
Plugin 'goldfeld/ctrlr.vim'

Plugin 'bogado/file-line'
Plugin 'rhysd/clever-f.vim'
" 
Plugin 'vim-scripts/lastpos.vim'

Plugin 'vim-scripts/fcitx.vim'
" "}}}

Plugin 'joonty/vdebug.git'
" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on
