#!/bin/bash

if [ $(id -u) -eq 0 ]; then


echo "
+-+-+-+-+-+-+ +-+ +-+-+-+-+-+-+-+-+-+-+-+-+
|s|c|r|i|p|t| |-| |r|e|p|o|-|i|n|s|t|a|l|l|
+-+-+-+-+-+-+ +-+ +-+-+-+-+-+-+-+-+-+-+-+-+

Autor: Fernando Debian
Comunide Debian Brasil no facebook Acessem:
https://goo.gl/qfNjkj -- https://goo.gl/9gv0zp"

sleep 5

echo "
####  REPOSITÓRIOS DEBIAN BUSTER deb.debian.org

### -------------------------###
###Repositório (buster) Base ###
### -------------------------###
deb http://deb.debian.org/debian/ buster main contrib non-free
#deb-src http://deb.debian.org/debian/ buster main contrib non-free

### -----------------------------------------###
###Repositório (buster) security.debian.org/ ###
### -----------------------------------------###
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
#deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free

### -----------------------------------###
###Repositório (buster) buster-updates ###
### -----------------------------------###
deb http://deb.debian.org/debian/ buster-updates main contrib non-free
#deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free

### ------------------------------------###
###Repositório (buster) proposed-updates###
### ------------------------------------###
#deb http://deb.debian.org/debian/ buster-proposed-updates main contrib non-free
#deb-src http://deb.debian.org/debian/ buster-proposed-updates main contrib non-free

### -------------------------------------###
###Repositório (buster) buster-backports ###
### -------------------------------------###
deb http://deb.debian.org/debian buster-backports main contrib non-free
#deb-src http://deb.debian.org/debian/ buster-backports main contrib non-free" > /etc/apt/sources.list

echo "

---------------------------------------------------
#Atualizando os repositórios, por favor aguarde...#
--------------------------------------------------- "
apt update &> /dev/null


echo "

-------------------------------------------
#Pronto sources.list alterada e atualizada#
------------------------------------------- "

else

echo "Você precisa estar logado como root para o script alterar a sources.list"

fi
