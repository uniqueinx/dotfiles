#!/bin/bash

RET=$(echo -e "PRs\nmatajer\nothaim\nagentservice\ndevops" | dmenu -p "Action")

case $RET in
	"PRs") brave "https://github.com/WhatsLab/matajer.frappe/pulls/uniqueinx" ;;
	"matajer") brave "https://github.com/WhatsLab/matajer.frappe" ;;
	"othaim") brave "https://github.com/WhatsLab/othaim-integration-proxy" ;;
	"agentservice") brave "https://github.com/WhatsLab/agent-service" ;;
	"devops") brave "https://github.com/WhatsLab/matajer-devops" ;;
	*) ;;
esac
