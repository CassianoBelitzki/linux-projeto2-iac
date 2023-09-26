#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando os programas necessários..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivos do site..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."
unzip main.zip

echo "Copiando arquivos para o servidor Apache..."
cd linux-site-dio-main
cp -R * /var/www/html/
