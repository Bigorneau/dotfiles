all: server dev desktop bash zsh screen tmux vim git mercurial uzbl xorg awesome

.PHONY: all server dev desktop bash zsh screen tmux vim git mercurial uzbl xorg awesome

server: vim bash zsh screen tmux

dev: server git mercurial

desktop: dev uzbl xorg awesome

bash:
	make -C bash

zsh:
	make -C zsh

screen:
	make -C screen

tmux:
	make -C tmux

vim:
	make -C vim

git:
	make -C git

mercurial:
	make -C mercurial

uzbl:
	make -C uzbl

xorg:
	make -C xorg

awesome:
	make -C awesome
