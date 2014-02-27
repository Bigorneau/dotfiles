all: server dev desktop bash zsh screen tmux vim git mercurial uzbl xorg awesome

.PHONY: all clean server dev desktop bash zsh screen tmux vim git mercurial uzbl xorg awesome

server: vim emacs bash zsh screen tmux

dev: server git mercurial

desktop: dev uzbl xorg awesome task mplayer irssi

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

emacs:
	make -C emacs

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

task:
	make -C task

mplayer:
	make -C mplayer

irssi:
	make -C irssi

# clean
clean:
	make clean -C vim
	make clean -C emacs
	make clean -C bash
	make clean -C zsh
	make clean -C screen
	make clean -C tmux
	make clean -C git
	make clean -C mercurial
	make clean -C uzbl
	make clean -C xorg
	make clean -C awesome
	make clean -C task
	make clean -C mplayer
	make clean -C irssi
