betterlockscreen -u ~/Pictures  
# move service file to proper dir (the aur package does this for you)
cp betterlockscreen@.service /etc/systemd/system/

# enable systemd service
systemctl enable betterlockscreen@$USER

# disable systemd service
#systemctl disable betterlockscreen@$USER


# Note: Now you can call systemctl suspend to suspend your system
# and betterlockscreen service will be activated
# so when your system wakes your screen will be locked.
