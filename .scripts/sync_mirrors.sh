sudo pacman -S curl rsync reflector 
sudo reflector --verbose -l 50 -p http --sort rate --save /etc/pacman.d/mirrorlist
