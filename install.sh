timedatectl set-ntp true
localectl set-locale LANG=en_US.UTF-8
# optimize repo mirrors
# reflector -c egypt -a 12 --sort rate --save /etc/pacman.d/mirrorlist
# view disks
# lsblk 
# gdisk <disk>
gdisk /dev/sda
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi
pacstrap /mnt base linux linux-firmware nano nvim intel-ucode
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
# create swap
dd if=/dev/zero of=/swapfile bs=1M count=1024 status=progress
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
# add swap to fstab
nano /etc/fstab
# /swapfile	none	swap	defaults	0 0
ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime
hwclock --systohc
# locale settings 
nano /etc/locale.gen 
# uncomment us
locale-gen
nano /etc/locale.conf
# enter LANG=en_US.UTF-8 and save 
nano /etc/hostname
# enter hostname 
nano /etc/hosts
# enter 
# 127.0.0.1	localhost
# ::1 localhost 
# 127.0.0.1 <hostname>.localdomain <hostname>
# enter password
passwd
pacman -S grub efibootmgr networkmanager network-manager-applet dialog mtools dosfstools base-devel linux-headers bluez bluez-utils cups alsa-utils pulseaudio pulseaudio-bluetooth git reflector xdg-utils xdg-user-dirs 
# install grub 
grub-install target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
# enable services 
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable org.cups.cupsd
# create user
useradd -mG wheel vex
passwd
# enter password 
EDITOR=nano
visudo
# uncomment the first wheel group to enable sudo 
reboot 

