#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Baixando e instalando apache e arquivos da aplicação..."
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio-main/archive/refs/heads/main.zip
unzip main.zip
cp -R /var/www/hmtl/
