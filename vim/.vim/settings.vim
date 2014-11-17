
for fpath in split(globpath('~/.vim/custom_setting', '*.vim'), '\n')
      exe 'source' fpath
endfor
