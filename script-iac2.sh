#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wgte http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/mais.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html


