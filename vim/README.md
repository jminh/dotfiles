
# which-key

:WhichKey(',')

# vim-signify

The master branch is async-only (at least Vim 8.0.902)

```
" default updatetime 4000ms is not good for async update
set updatetime=100
```

```
vim
echo has('patch-8.0.902')
```

:SignifyDiff[!]

Open a new tab with two windows using |diff-mode| to show the differences
between the current file and its version that was last checked in.

With [!], no new tab will be opened.

    ]c   Jump to the next hunk.
    [c   Jump to the previous hunk.

    ]C   Jump to the last hunk.
    [C   Jump to the first hunk.

# gtags

See custom_setting/vim-gutentags.vim

```
" config project root markers.
let g:gutentags_project_root = ['.root']
```

emacs also comes with ctags

For example:
  /opt/emacs-25.1/bin/ctags
  /opt/emacs-25.1/bin/emacs

```
export PATH /opt/emacs-25.1/bin:$PATH
```

But emacs's ctags which is not working with vim-gutentags.vim.

You need something like

```
export PATH /opt/emacs-25.1/bin:$PATH
export PATH /opt/ctags-5.8/bin:$PATH
```

# LSP coc

nodejs >= 8.10.0
vim >= 8.0.1453

Install nodejs before using :PlugInstll.

Otherwise you have to
1. remove coc.nvim with :PlugClean
1. install nodejs
3. install coc.nvim with :PlugInstll

config
.vim/coc-settings.json

```
{
  "languageserver": {
    "clangd": {
      "command": "/usr/local//Cellar/llvm/9.0.1/bin/clangd",
      "rootPatterns": [
        "compile_commands.json"
      ],
      "filetypes": [
        "c",
        "cpp",
        "objc",
        "objcpp"
      ],
      "args": [
        "-j=5"
      ]
    }
  },
  "python.jediEnabled": false
}
```

https://releases.llvm.org/9.0.0/tools/clang/tools/extra/docs/ReleaseNotes.html
Background indexing is on by default

When using clangd, it will build an index of your code base (all files listed in your compile database). This index enables go-to-definition, find-references, and even code completion to find symbols across your project.

This feature can consume a lot of CPU. It can be disabled using the --background-index=false flag, and respects -j to use fewer threads. The index is written to .clangd/index in the project root.

```
{
"languageserver": {
  "cquery": {
      "command": "/usr/local/bin/cquery",
      "args": ["--log-file=/tmp/cq.log"],
      "filetypes": ["c", "cpp"],
      "rootPatterns": ["compile_flags.txt", "compile_commands.json", ".vim/", ".git/", ".hg/"],
      "initializationOptions": {
            "cacheDirectory": "/Users/ming/.cquery/cache"
          }
    }
}}
```

If you want to store it in the project.

```
      "initializationOptions": {
            "cacheDirectory": ".cquery/cache"
          }
```

:CocInfo

:CocOpenLog

:CocLocalConfig

:CocConfig

:CocInstall -sync coc-python
:CocInstall -sync coc-tabnine

Python, conda, use Jedi

Use python.pythonPath

```
{
   "python.pythonPath":"/Users/ming/miniconda2/bin/python",
   "languageserver":{
      "bash":{
         "command":"bash-language-server",
         "args":[
            "start"
         ],
         "filetypes":[
            "sh"
         ],
         "ignoredRootPaths":[
            "~"
         ]
      }
   }
}
```

Note: you need to install jedi in your environment.

```
pip install jedi --upgrade
pip install jedi --upgrade --user

If your jedi is too old, you will see

:CocOpenLog
RuntimeError: Jedi version 0.10.2 too old, requires >= 0.13.0
```

If you want Microsoft Python language server, use following

```
{
   "python.jediEnabled":false
}
```

The problem of Microsoft Python languageserver server now is:
MPLS using too much memory and CPU.
It's bug of MPLS, checkout https://github.com/Microsoft/python-language-server/issues/832.

# LSP

```
:call LanguageClient#textDocument_definition()
```

code index location

- ccls
  ./.ccls-cache
- clangd (version 9.0.0)
  ./.clangd/index
- cquery
   defined in cacheDirectory

clangd
  The index is saved to the .clangd/index in the project root;
  index shards for common headers e.g. STL will be stored in $HOME/.clangd/index;

Small working example

ccls
```
let g:LanguageClient_serverCommands = {
       \ 'c': ['/usr/local/bin/ccls', '--init={"index": {"threads": 2}, "cacheFormat": "json"}'],
       \ 'cpp': ['/usr/local/bin/ccls', '--init={"index": {"threads": 2}, "cacheFormat": "json"}'],
       \ }
```

clangd
```
let g:LanguageClient_serverCommands = {
  \ 'cpp': ['/usr/local/opt/llvm/bin/clangd'],
  \ 'c': ['/usr/local/opt/llvm/bin/clangd'],
  \ }
```

cquery
```
let g:LanguageClient_serverCommands = {
 \ 'c': ['/usr/local/bin/cquery',
 \ '--log-file=/tmp/cq.log',
 \ '--init={"cacheDirectory":"/Users/ming/.cquery/cache"}'],
 \ 'cpp': ['/usr/local/bin/cquery',
 \ '--log-file=/tmp/cq.log',
 \ '--init={"cacheDirectory":"/Users/ming/.cquery/cache"}']
 \ }
```

For cquery,
(   0.022s) [querydb      ]     initialize.cc:536   | cacheDirectory cannot be empty.

```
src/config.h
`initialize` request to the cquery language server. The only required option is
`cacheDirectory`, which is where index files will be stored.
```

Make sure language server could be started when invoked manually from shell.
Also try use absolute path for server commands,
as PATH in vim might be different from shell env, especially on macOS.

# YouCompleteMe

You need to compile YCM before using it. Read the docs!

For example, you can compile [YCM](https://github.com/Valloric/YouCompleteMe)
with semantic support for C-family languages:

    $ cd ~/.vim/bundle/YouCompleteMe
    $ ./install.sh --clang-completer

C-family Semantic Completion Engine Usage

YCM looks for a .ycm_extra_conf.py file in the directory of the opened file or in any directory above it in the hierarchy (recursively); when the file is found, it is loaded (only once!) as a Python module.

The dotfiles/vim has a .ycm_extra_conf.py file.
It will be the defalut setting for YCM when you put it in your home directory.

## [Way 1] Use Vundle to install

    Open vim
    :PluginInstall

    $ cd ~/.vim/bundle/YouCompleteMe
    $ ./install.sh --clang-completer

    OR Compiling YCM without semantic support for C-family languages
    $ ./install.sh --clang-completer

## [Way 2] On Arch Linux - AUR - vim-youcompleteme-git

Comment (dotfiles/vim/.vim/vundles.vim) since you do not need Vundle to install YCM.

    " Plugin 'Valloric/YouCompleteMe'

Install YCM from [AUR](https://wiki.archlinux.org/index.php/YouCompleteMe)


```
    $ yaourt vim-youcompleteme-git
```

# ALE

+ Makefile: https://github.com/mrtazz/checkmake
+ bash: shellcheck https://github.com/koalaman/shellcheck#installing
+ tcl: nagelfar

:ALEInfo

:ALEDisable

:ALEEnable

Linter example
```
let g:ale_linters = {
            \   'cpp': ['clangd', 'clang'],
            \   'c': ['clangd', 'clang'],
            \   'verilog': ['verilator'],
            \   'sh': ['shellcheck', 'language_server'],
            \}
```

clangd reads compile_commands.json. clang seems not reads compile_commands.json.

Example :ALEInfo

```
Current Filetype: tcl
Available Linters: ['nagelfar']
  Enabled Linters: ['nagelfar']
 Suggested Fixers:
  'remove_trailing_lines' - Remove all blank lines at the end of a file.
  'trim_whitespace' - Remove all trailing whitespace characters at the end of every line.
 Linter Variables:
let g:ale_tcl_nagelfar_executable = 'nagelfar.tcl'
```

```
http://nagelfar.sourceforge.net/
https://sourceforge.net/projects/nagelfar/files/
Rel_131
nagelfar131.linux.gz 2019-08-22

Files in 1.3.1 release:
nagelfar131.tar.gz is the complete distribution.
```

Take tcl for example, download nagelfar131.linux.gz.

Extract the gz file you will see nagelfar131.linux. Rename it to nagelfar and put it in $PATH.

# TabNine

zxqfl/TabNine
Is the index stored only in memory or persisted to disk? #46
https://github.com/zxqfl/TabNine/issues/46

You can check its version by typing folliwng string in the buffer

```
TabNine::version
```

# FZF

https://github.com/junegunn/fzf.vim

:Rg [PATTERN] rg search result (ALT-A to select all, ALT-D to deselect all)

quickfix

:BLines
  Lines in the current buffer

:Files
  Lines in loaded buffers

:Lines

:Snippets
  UltiSnips

:Windows

:Marks

:History:
  vim command history

# LeaderF

Leaderf jump between functions

:Leaderf function
:Leaderf! function

Note !.

# Preview

skywind3000/vim-preview

quickfix

autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

:Leaderf command
:Commands (FZF)

:PreviewScroll 1
:PreviewScroll -1

# UltiSnip

Trigger configuration. Tab
let g:UltiSnipsExpandTrigger="<tab>"

g:UltiSnipsJumpForwardTrigger
<c-j>

g:UltiSnipsJumpBackwardTrigger
<c-k>

- C++ snippets
  https://github.com/honza/vim-snippets/blob/master/snippets/cpp.snippets
- C snippets
  https://github.com/honza/vim-snippets/blob/master/snippets/c.snippets
- python snippets
  https://github.com/honza/vim-snippets/blob/master/snippets/python.snippets
- TCL snippets
  https://github.com/honza/vim-snippets/blob/master/snippets/tcl.snippets
- verilog
  https://github.com/honza/vim-snippets/blob/master/snippets/verilog.snippets
- system verilog
  https://github.com/honza/vim-snippets/blob/master/snippets/systemverilog.snippets
- sql
  https://github.com/honza/vim-snippets/blob/master/snippets/sql.snippets
- sh
  https://github.com/honza/vim-snippets/blob/master/snippets/sh.snippets

# Key binding

jk - exit insert mode in Vim

# vim-rooter

In my current setting, I stop vim-rooter changing directory automatically.

ack, ag, grep in the top level project dir

,cd - invoke vim-rooter manually


# Tagbar

,tt - toggle Tagbar

# Mark

,m - mark or unmark the word under (or before) the cursor

https://github.com/vim-scripts/Mark
mark.vim should be re-sourced after any changing to colors. For example, if you
:set background=dark  OR
:colorscheme default
you should
:source PATH_OF_PLUGINS/mark.vim
after that. Otherwise, you won't see the colors.

## ctrlsf
C-F f :Search the current word

# vim-mundo (undo tree)

:MundoToggle

Use p on a state to make the preview window
show the diff
between your current state and the selected state

```
p: Diff of selected undo and current statue
<cr>: Revert to selecte state

i: inline diff mode

d: Vert diff of undo with current statue

```

# commentary

gcc
5gcc

gcap

gc (in visual mode)


# C++ clang-format

vim-clang-format

,cf formatting C++ code

# profile vim

```
:StartupTime 20

Total Time:  139.669 -- Flawless Victory
```

has, system is slow

Reduce the use of has() or system()

alternative
bchretien/vim-profiler https://github.com/bchretien/vim-profiler

# deprecated

## Search

K - Search the current word under the cursor

## File Navigation

,t - CtrlP fuzzy file selector

,b - CtrlP buffer selector

# NERDTree

F2 - toggle NERDTree

# Code Navigation

,gf Jump to the defintion of function(class)
,gg

## Easy Motion

,,w
,,b

,,f
,,F

## vim tmux (vimux)

,vp - Prompt for a command to run

,vi - Inspect the runner pane

,vq - Close the runner pane

,vs - Interrupt any command running in the runner pane map

,vz - Zoom the runner pane

# compile vim 8.2

Some plugins require new vim and some need python support. You may need to compile a new one to suit your case.

gcc
```
gcc --version
gcc (GCC) 7.3.0

g++ --version
g++ (GCC) 7.3.0
```

```
git clone https://github.com/vim/vim.git
cd vim
make distclean
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-command=/opt/bin/python \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/u/ming/bin/vim8_2
make VIMRUNTIMEDIR=/u/ming/bin/vim8_2/share/vim/vim82 -j10
make install
```

Note: Do not use conda python. Otherwise you need to be in a conda env to use vim.

Ref:
(1) https://vi.stackexchange.com/questions/17433/requires-vim-compiled-with-python-2-7-1-or-3-4-support
(2) https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source
