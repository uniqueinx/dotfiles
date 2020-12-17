#!/bin/bash

RET=$(echo -e "matajer-pulls\nmatajer-code" | dmenu -p "Action")

case $RET in
	"matajer-pulls") brave "https://github.com/WhatsLab/matajer.frappe/pulls/uniqueinx" ;;
	"matajer-code") brave "https://github.com/WhatsLab/matajer.frappe" ;;
	*) ;;
esac
