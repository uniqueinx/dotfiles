export LC_ALL=en_US.UTF-8
export TERMINAL=alacritty
export PAGER=less
export TERM="xterm-256color"
export GPG_TTY=$(tty)
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export EDITOR=nvim
export VISUAL=nvim

# Node.js
# PATH="$HOME/.node_modules/bin:$PATH"
# export npm_config_prefix=~/.node_modules

# PIP
# export PATH=$HOME/.local/bin:$PATH

# Go
export PATH="$PATH:$HOME/go/bin"

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Java
export JAVA_HOME=/usr/lib/jvm/java-15-openjdk
export PATH=$JAVA_HOME/bin:$PATH


# export PATH="$PATH:$HOME/sonar-scanner-4.5.0.2216-linux/bin"

# custom_scripts
export PATH="$PATH:$HOME/.scripts"
