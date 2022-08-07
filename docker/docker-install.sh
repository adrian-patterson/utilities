curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
apt install docker-compose -y
chmod a+x /usr/local/bin/docker-compose
usermod -aG docker $USER

