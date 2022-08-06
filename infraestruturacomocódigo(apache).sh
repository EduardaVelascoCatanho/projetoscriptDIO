#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache..."
apt-get install apach2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Baixando o arquivo main.zip no diretório tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompaquitando o arquivo baixado..."
unzip main.zip

echo "entrando no diretório descompactado"
cd linux-site-dio-main

echo "Copiando tudo para o diretório padrão do Apache"
cp -R * /var/www/html/ 