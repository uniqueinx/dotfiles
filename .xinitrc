eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
export SSH_AUTH_SOCK
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
nm-applet &
# picom &
nitrogen --restore &
setxkbmap -layout us,ara -option grp:caps_toggle &
thunar --daemon &
# redshift -l 30.06:31.29 &
dunst &
sxhkd &
xset r rate 300 50 &
# udiskie -s &
exec lxsession &
# /usr/bin/polkit-dumb-agent &
unclutter &
clipit -n -d &
exec slstatus &
# exec .scripts/fix_jetbrains.sh &
exec .scripts/start_dwm.sh
