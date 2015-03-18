
all: help

PWD := $(shell pwd)

help:
	@echo "-- Menu"
	@echo "1. make zsh"
	@echo "2. make git"
	@echo "3. make vim"


.PHONY: zsh 
zsh:
	ln -s $(PWD)/zsh/.zshrc $(HOME)/.zshrc
	@echo "You may want to use oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)"


.PHONY: git
git:
	ln -s $(PWD)/git/.gitconfig $(HOME)/.gitconfig

.PHONY: vim
vim:
	ln -s $(PWD)/vim/.vimrc $(HOME)/.vimrc
	ln -s $(PWD)/vim/.vim $(HOME)/.vim

