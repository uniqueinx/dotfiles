user=vex
useradd -mG wheel $user
echo "Enter password"
EDITOR=nano
echo "Uncomment the first wheel group to enable sudo"
visudo
