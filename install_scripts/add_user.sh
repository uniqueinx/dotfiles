user=vex
useradd -mG wheel $user
echo "Enter password"
passwd %user
EDITOR=nano
echo "Uncomment the first wheel group to enable sudo"
visudo
