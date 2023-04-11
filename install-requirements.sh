#!/bin/bash
touch ~/my-setup.txt

# install docker and compose
echo "=====install docker and compose=====" | tee ~/my-setup.txt
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get -y update
sudo apt install docker-ce -y
sudo usermod -aG docker $USER
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker $USER
#test
docker-compose --version | tee ~/my-setup.txt
echo "==============================" | tee ~/my-setup.txt
# reboot for setup user