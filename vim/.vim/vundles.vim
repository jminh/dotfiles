
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
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
set laststatus=2
let g:Powerline_symbols='unicode'
Bundle 'FuzzyFinder'

" appearance {{{
Bundle 'mhinz/vim-startify'
" colorscheme
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-vividchalk'

" Bundle 'yonchu/accelerated-smooth-scroll'

" numbers Vim 7.3+
Bundle 'myusuf3/numbers.vim'

Bundle 'Yggdroot/indentLine'
" map <leader>il :IndentLinesToggle<CR>
Bundle 'Lokaltog/vim-powerline'

" Bundle 'xsunsmile/showmarks.git'
" }}}

" project {{{
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'

Bundle 'vim-scripts/TaskList.vim'

Bundle 'majutsushi/tagbar'
" }}}

" git {{{
Bundle 'gregsexton/gitv'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
" }}}



" Provides tab completion while inside the “/” search
Bundle 'vim-scripts/SearchComplete'

" search {{{
Bundle 'osyo-manga/vim-over'
Bundle 'mileszs/ack.vim'
" Bundle 'petdance/ack2'
Bundle 'rking/ag.vim'
" vim-rooter (ack, ag, grep in the top level project dir)
Bundle 'airblade/vim-rooter'
Bundle 'vim-scripts/EasyGrep'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'justinmk/vim-sneak'
Bundle 'vim-scripts/IndexedSearch'

" usage: https://github.com/bronson/vim-visual-star-search
Bundle 'bronson/vim-visual-star-search'
" vim bookmark
Bundle 'MattesGroeger/vim-bookmarks'
" }}}

Bundle 'vim-scripts/mru.vim'

Bundle 'L9'
" vim-autocomplpop
"Automatic trigger complete popup menu (need L9)
Bundle 'othree/vim-autocomplpop'


" vim-scripts pythoncomplete
" To use this plugin, make sure ftplugins are enabled, via "filetype plugin
" on".
Bundle 'vim-scripts/pythoncomplete'

" Useful for python/vim scripts
Bundle 'michaeljsmith/vim-indent-object'

" Syntax checking hacks for vim
Bundle 'scrooloose/syntastic'

" Bundle 'vim-scripts/Conque-Shell'
Bundle 'acx0/Conque-Shell'

Bundle 'benmills/vimux'

" C/C++ {{{
Bundle 'vim-scripts/a.vim'
" }}}

" markdown {{{
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
" }}}

" imporvements {{{
Bundle 'AndrewRadev/linediff.vim'

Bundle 'Raimondi/delimitMate'
" It requires Vim 7.3.885 or above and "if_lua" enabled Vim.
" Bundle 'Shougo/neocomplete.vim'

Bundle 'vim-scripts/Mark'
" Bundle 'vim-scripts/Mark--Karkat'

" use multiple cursors like Sublime Text editor.
Bundle 'terryma/vim-multiple-cursors'
" Bundle "vim-scripts/AutoTag.git"
Bundle 'craigemery/vim-autotag'
Bundle 'chrisbra/NrrwRgn'
Bundle 'sjl/gundo.vim'
Bundle 'mbbill/undotree'
Bundle 'goldfeld/ctrlr.vim'

Bundle 'bogado/file-line'
Bundle 'rhysd/clever-f.vim'
" 
Bundle 'vim-scripts/lastpos.vim'
" "}}}

Bundle 'joonty/vdebug.git'
" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

" Filetype plugin indent on is required by vundle
filetype plugin indent on
