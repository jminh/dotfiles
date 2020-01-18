import glob
import os

"""
For slow disk, put all vimrc setting in one file can seedup startup time.

Usage:
python3 create_all_in_one_vimrc.py > _vimrc_all_in_one
"""

HOME = os.path.expanduser("~")

def custom_setting():
    for f in glob.glob(HOME + "/dotfiles/vim/.vim/custom_setting/*.vim"):
        for line in open(f):
            print(line, end='')

for line in open(HOME + '/dotfiles/vim/.vimrc'):
    if line.strip() == "source ~/.vim/vundles.vim":
        for line in open(HOME + '/dotfiles/vim/.vim/vundles.vim'):
            print(line, end='')
    elif 'source ~/.vim/settings.vim' in line:
        custom_setting()
    else:
        print(line, end='')
