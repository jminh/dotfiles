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
            if "neoclide/coc.nvim" in line:
                print("Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}")
            elif "w0rp/ale" in line:
                print("Plug 'w0rp/ale', { 'on': 'ALEToggle'}")
            else:
                print(line, end='')
    elif 'source ~/.vim/settings.vim' in line:
        custom_setting()
    else:
        print(line, end='')

print("""\
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 15
let g:netrw_browse_split = 4
let g:netrw_altv = 1

let g:coc_start_at_startup=0
function! CocTimerStart(timer)
    call plug#load('coc.nvim')
    exec "CocStart"
endfunction
call timer_start(5000,'CocTimerStart',{'repeat':1})
""")
