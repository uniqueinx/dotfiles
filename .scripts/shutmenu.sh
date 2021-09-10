#!/bin/bash

RET=$(echo -e "Reboot\nShutdown\nLogout\nCancel" | dmenu -p "Action")

case $RET in
	Shutdown) systemctl poweroff ;;
	Reboot) systemctl reboot ;;
	Logout) xdotool key "super+shift+y" ;;
	*) ;;
esac
