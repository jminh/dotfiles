
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


# Key binding

jk - exit insert mode in Vim

# vim tmux (vimux)

,vp - Prompt for a command to run

,vi - Inspect the runner pane

,vq - Close the runner pane

,vs - Interrupt any command running in the runner pane map

,vz - Zoom the runner pane

# vim-rooter

In my current setting, I stop vim-rooter changing directory automatically.

ack, ag, grep in the top level project dir

,cd - invoke vim-rooter manually


# Tagbar

,tt - toggle Tagbar

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

# Search

K - Search the current word under the cursor

## ctrlsf
C-F f :Search the current word

# File Navigation

,t - CtrlP fuzzy file selector

,b - CtrlP buffer selector

# commentary

gcc
5gcc

gcap

gc (in visual mode)


# C++ clang-format

vim-clang-format

,cf formatting C++ code

