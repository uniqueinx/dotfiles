#!/bin/bash

RET=$(echo -e "Shutdown\nReboot\nLogout\nCancel" | dmenu -p "Action")

case $RET in
	Shutdown) systemctl poweroff ;;
	Reboot) systemctl reboot ;;
	Logout) xdotool key "super+shift+y" ;;
	*) ;;
esac
