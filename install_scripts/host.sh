path="/etc"
hostname="vex-pc"
echo "$hostname" > $path/hostname
echo -e "127.0.0.1\tlocalhost\n::1\t localhost\n127.0.0.1\t$hostname.localdomain $hostname\n" > $path/hosts