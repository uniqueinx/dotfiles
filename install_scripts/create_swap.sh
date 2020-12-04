dd if=/dev/zero of=/swapfile bs=1M count=2048 status=progress
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo -e "/swapfile\tnone\tswap\tdefaults\t0 0" >> /etc/fstab
