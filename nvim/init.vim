
" Nvim shows weird symbols (�[2 q) when changing modes
" https://github.com/neovim/neovim/wiki/FAQ
" Workaround some broken plugins which set guicursor indiscriminately.
:set guicursor=
:autocmd OptionSet guicursor noautocmd set guicursor=
