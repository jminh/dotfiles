
" Reference https://github.com/skwp/dotfiles/blob/master/vimrc

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effet.
set nocompatible " not compatible with the old-fashion vi mode


" ========== General Config ==========
set nu "Line numbers are good
set history=1000 "Store lots of :cmdline history
set showcmd "Show incompatible cmds down the bottom
set autoread "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" Configuring Vim right
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on sytax highlighting
syntax on

" yank and paste with the X11 clipborad (http://goo.gl/aXb29o)
 if has('unnamedplus')
    set clipboard=unnamedplus
 endif

" Start searching when you type the first character of the search string
set incsearch

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" ========== Turn Off Swap Files ==========
set noswapfile
set nobackup
set nowb

" 顯示空白 http://softsmith.blogspot.tw/2013/03/vim-tab.html
set listchars=tab:>-,trail:-,extends:#,nbsp:-
set list

" More natural split opening http://goo.gl/Q7sbpw
" Open new split panes to right and bottom, which feels more natural than
" Vim's default
set splitbelow
set splitright

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Why use jk http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
inoremap jk <esc> 

" buffer key map https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/ {{{
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one (This replicates the idea of closing a tab)
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
" nmap <leader>bl :ls<CR>
" }}}

" set cursorline cursorcolumn "Hilight current line and column
" set nocursorline nocursorcolumn "Hilight current line and column

" Show cursorline only in active window of Vim
" http://goo.gl/OPDh5D
"augroup CursorLineOnlyInActiveWindow
"  autocmd!
"  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  autocmd WinLeave * setlocal nocursorline
"augroup END
"hi CursorLine term=bold cterm=bold guibg=Grey40



" ========== Vundle Initialization ==========
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ========== Custom Settings ==========
source ~/.vim/settings.vim


" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
""  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal g'\"" | endif
"endif

" Vim - Python WiKi https://wiki.python.org/moin/Vim
filetype indent plugin on

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on


"  pathogen.vim : Easy manipulation of 'runtimepath', 'path', 'tags', etc 
" call pathogen#infect() 

" filetype plugin on

" let g:pydiction_location = '/home/ming/.vim/bundle/pydiction/complete-dict'
" let g:pydiction_menu_height = 20


" (stackoverflow) In my .vimrc, how can I check for the existence of a color scheme?
" http://goo.gl/9M5OYz
try
    colorscheme peaksea
    set background=dark
catch
    colorscheme desert
endtry

" for gvim
if has('gui_running')
    set guioptions-=T  " no toolbar
    set t_Co=256
"    set guifont=Monaco:h12
"    set guifont=Mono\ Uralic\ 10
    set guifont=Ubuntu\ mono\ 12
    set guifont=Monaco\ 12
" set background=dark
    colorscheme desert
endif

" keymap


" Highlight all search pattern matches http://vim.wikia.com/wiki/VimTip14
" :nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <leader><Space> :nohlsearch<Bar>:echo<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" (gvim) For visuaally selected text
set guioptions+=a
function! MakePattern(text)
  let pat = escape(a:text, '\')
  let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
  let pat = substitute(pat, '^\_s\+', '\\s\\*', '')
  let pat = substitute(pat, '\_s\+',  '\\_s\\+', 'g')
  return '\\V' . escape(pat, '\"')
endfunction
vnoremap <silent> <F8> :<C-U>let @/="<C-R>=MakePattern(@*)<CR>"<CR>:set hls<CR>

" Open every buffer in its own tabpage
" http://vim.wikia.com/wiki/Open_every_buffer_in_its_own_tabpage
" To open each buffer in its own tabpage, add this to your vimrc: 
" :au BufAdd,BufNewFile * nested tab sball

" {{{ http://tangosource.com/blog/a-tmux-crash-course-tips-and-tweaks/
" for tmux to automatically set paste and nopaste mode at the time pasting (as
" happens in VIM UI)

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" }}}

" Static cursor shape {{{ Swap iTerm2 cursors in vim insert mode when using tmux
if exists('$ITERM_PROFILE')
  if exists('$TMUX') 
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end
" }}}

