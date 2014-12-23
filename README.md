dotfiles
==========

I use dotfiles repository to manage my dotfiles (rcfiles, ...).


# vim

map key (,t) conflict

,t is reserved for CtrlP.

TaskList.vim uses ,t mapping,
you can change it to ,T.

    $ vim +369 ~/.vim/bundle/TaskList.vim/plugin/tasklist.vim


## YCM

You need to compile YCM before using it. Read the docs!

https://github.com/Valloric/YouCompleteMe

For example, you can compile YCM with semantic support for C-family languages:

    $ cd ~/.vim/bundle/YouCompleteMe
    $ ./install.sh --clang-completer

C-family Semantic Completion Engine Usage

YCM looks for a .ycm_extra_conf.py file in the directory of the opened file or in any directory above it in the hierarchy (recursively); when the file is found, it is loaded (only once!) as a Python module.

The dotfiles/vim has a .ycm_extra_conf.py file.
It will be the defalut setting for YCM when you put it in your home directory.
