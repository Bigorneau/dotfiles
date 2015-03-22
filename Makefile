all: server dev desktop

server: vim emacs bash zsh screen tmux systemd yaourt

dev: server git mercurial mutt

desktop: dev uzbl xorg awesome task mplayer irssi mutt livestreamer

.PHONY: all clean server dev desktop bash zsh screen tmux vim git mercurial uzbl xorg awesome mutt

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

mutt:
	make -C mutt

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
	make clean -C mutt
