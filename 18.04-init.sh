#!/bin/bash
cp /etc/apt/sources.list /etc/apt/sources.list.bak
sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu/http:\/\/mirrors.163.com\/ubuntu/g' /etc/apt/sources.list
sed -i 's/http:\/\/security.ubuntu.com\/ubuntu/http:\/\/mirrors.163.com\/ubuntu/g' /etc/apt/sources.list


sudo apt update && apt -y upgrade && apt install -y php-curl php-fpm php-mbstring php-mysql php-xml php-zip php-gd php-dev php-pear php-bcmath composer nginx redis mysql-server libpng-dev
sudo apt-get install \
      apt-transport-https \
      ca-certificates \
      curl \
      software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
sudo apt-get update
sudo apt install docker.io
