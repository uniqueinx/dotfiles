sudo pacman -S lxappearance acpi atool bat curl ffmpegthumbnailer firewalld go-tools highlight htop jq less lsd mediainfo openvpn openssh pacman-contrib tmux usbguard fzf adapta-gtk-theme adobe-source-code-pro-fonts alacritty discount evince feh npm papirus-icon-theme rofi blueman bluez-utils acpi playerctl pulseaudio pulseaudio-alsa pulseaudio-bluetooth xfce4-power-manager gimp pavucontrol vlc 
yay -S pulseaudio-ctl
function configurePacman() {
    sed -i 's/#Color/Color\nILoveCandy/g' /etc/pacman.conf
    sed -i 's/#TotalDownload/TotalDownload/g' /etc/pacman.conf
}
