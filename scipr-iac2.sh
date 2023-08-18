#!/bin/bash

echo "atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
pat-get install unzip -y

echo "baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linus-site-dio-main
cp -R * /var/www/html/ 
