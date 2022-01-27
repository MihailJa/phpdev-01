#!/bin/bash

echo 'Install curl...'
sudo apt install curl -y

echo 'Install git...'
sudo apt install git -y

echo 'Install php-fpm...'
sudo apt install php-fpm -y

echo 'Install nginx...'
sudo apt install nginx -y

echo 'Install mysql-server...'
sudo apt install mysql-server -y

echo 'Install phpmyadmin...'
sudo apt install phpmyadmin -y

echo 'Install memcached...'
sudo apt install memcached -y

echo 'Install redis-server...'
sudo apt install redis-server -y

echo 'Install php-redis...'
sudo apt install php-redis -y

echo 'Install php-memcached...'
sudo apt install php-memcached -y

echo 'Install Visual studio code...'
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
sudo apt install code -y

echo 'Install zsh...'
sudo apt install zsh -y

echo 'Install oh-my-zsh...'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
