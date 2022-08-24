#!/bin/bash

#Atualizar servidor
echo "atualizando o servidor"
apt  upgrade -y


#instalar o apache
echo "instalando o apache2"
apt install apache2 -y

#instalar o unzip
echo "instalando o unzip"
apt install unzip

#criar a pasta tmp
mkdir tmp
cd tmp

#baixar os para a pasta tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#descompactar os arquivo
unzip main.zip


echo "copiando os arquivos para o apache"
cp ./linux-site-dio-main/*  /var/www/html/ -r
