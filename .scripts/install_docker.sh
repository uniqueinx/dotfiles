sudo pacman -S docker docker-compose kubectl
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
sudo systemctl enable docker