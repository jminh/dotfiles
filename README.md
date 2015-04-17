dotfiles
==========

I use dotfiles repository to manage my dotfiles (rcfiles, ...).

# Install

Take vim for examle:

Use make (Makefile)

    $ git clone https://github.com/archaicdust/dotfiles.git
    $ cd dotfiles && make vim

Manual Installation

    $ git clone https://github.com/archaicdust/dotfiles.git
    $ ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
    $ ln -s ~/dotfiles/vim/.vim ~/.vim

Or you can use [stow](http://www.gnu.org/software/stow/manual/stow.html#Introduction) to manage the symbolic link:

    $ git clone https://github.com/archaicdust/dotfiles.git
    $ cd ~/dotfiles
    $ stow -v vim

[Show](http://superuser.com/questions/71163/how-to-find-all-soft-links-symbolic-links-in-current-directory) any symbolic links in the home directory, without any child directory

    $ find . -maxdepth 1 -type l -print

# zsh

The code in .zprofile is used to
**start ssh-agent on login**.

# vim

map key (,t) conflict

,t is reserved for CtrlP.

TaskList.vim uses ,t mapping,
you can change it to ,T.

    $ vim +369 ~/.vim/bundle/TaskList.vim/plugin/tasklist.vim

## Code navigation ( ctags + autotag )

### ctags

You need have Exuberant CTags(ctags).

In the root of the project directory,
    $ ctags -R -f .tags

### AutoTag

If you use ctags to make tag files of your source,
it' nice to be able to re-run ctags on a source file when you save it.

This (python) plugin will do two things:

(1) It will search for a tag files starting in the directory where your source
file resides (:pwd in vim) and moving up a directory at a time until it either finds one or runs
out of directory to try.

(2) Should it find a tag file, it will then delete all entries in said tags file
referencing the source file you have just saved and then execute ctags -a on that
source file from the tags file.

This way, every time you save a file, your tags file will be seamlessly updated.

[AutoTag](https://github.com/vim-scripts/AutoTag) setting

If the tag file name is .tags, type the following command in vim normal mode when you start a new vim instance:

    :set tags=.tag

Or you can set up in ~/.vimrc

    let g:autotagTagsFile=".tags"

Generate a file .tags under the woring directory:

    $ ctags -R -f .tags


## YCM

You need to compile YCM before using it. Read the docs!

For example, you can compile [YCM](https://github.com/Valloric/YouCompleteMe)
with semantic support for C-family languages:

    $ cd ~/.vim/bundle/YouCompleteMe
    $ ./install.sh --clang-completer

C-family Semantic Completion Engine Usage

YCM looks for a .ycm_extra_conf.py file in the directory of the opened file or in any directory above it in the hierarchy (recursively); when the file is found, it is loaded (only once!) as a Python module.

The dotfiles/vim has a .ycm_extra_conf.py file.
It will be the defalut setting for YCM when you put it in your home directory.
