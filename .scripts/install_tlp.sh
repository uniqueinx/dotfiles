sudo pacman -S tlp tlp-rdw bash-completion ethtool lsb-release smartmontools x86_energy_perf_policy
sudo systemctl enable tlp.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
sudo tlp start

tlp-stat -s 
