#!/usr/bin/bash

case "$1" in
	start)
		Xephyr -ac -br -noreset -screen 800x600 :1 &
		sleep 1
		DISPLAY=:1.0 awesome -c "$HOME/.config/awesome/rc.lua"
	;;
	restart)
		kill -s SIGHUP `pidof Xephyr`
	;;
	stop)
		kill -s SIGKILL `pidof Xephyr`
	;;
	*)
		echo "NOPE"
		exit 1
	;;
esac
