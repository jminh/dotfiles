
all: help

PWD := $(shell pwd)

help:
	@echo "-- Menu"
	@echo "1. make zsh"
	@echo "2. make git"
	@echo "3. make vim"
	@echo "4. make tmux"
	@echo "5. make X11"


.PHONY: zsh 
zsh:
	ln -s $(PWD)/zsh/.zshrc $(HOME)/.zshrc
	@echo "You may want to use oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)"


.PHONY: git
git:
	ln -s $(PWD)/git/.gitconfig $(HOME)/.gitconfig
	ln -s $(PWD)/git/.git-commit-template.txt $(HOME)/.git-commit-template.txt
	ln -s $(PWD)/git/.tigrc $(HOME)/.tigrc

.PHONY: vim
vim:
	ln -s $(PWD)/vim/.vimrc $(HOME)/.vimrc
	ln -s $(PWD)/vim/.vim $(HOME)/.vim

.PHONY: spacemacs
spacemacs:
	ln -s $(PWD)/spacemacs/.spacemacs $(HOME)/.spacemacs

.PHONY: tmux
tmux:
	ln -s $(PWD)/tmux/.tmux.conf $(HOME)/.tmux.conf

.PHONY: babun
tmux:
	ln -s $(PWD)/babun/.babunrc $(HOME)/.babunrc
	ln -s $(PWD)/babun/.minttyrc $(HOME)/.minttyrc

.PHONY: X11
X11:
	ln -s $(PWD)/X11/.xinitrc $(HOME)/.xinitrc
	ln -s $(PWD)/X11/.Xresources $(HOME)/.Xresources
	ln -s $(PWD)/X11/.Xmodmap $(HOME)/.Xresources
