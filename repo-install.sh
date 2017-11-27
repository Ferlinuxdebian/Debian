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
####        REPOSITÓRIOS DEBIAN STRETCH "deb.debian.org"


### -----------------------------
###Repositório (stretch) Base ###
### -----------------------------
deb http://deb.debian.org/debian/ stretch main contrib non-free
#deb-src http://deb.debian.org/debian/ stretch main contrib non-free

### -----------------------------
###Repositório (stretch) security.debian.org/ ###
### -----------------------------
deb http://deb.debian.org/debian-security/ stretch/updates main contrib non-free
#deb-src http://deb.debian.org/debian-security/ stretch/updates main contrib non-free

### -----------------------------
###Repositório (stretch) stretch-updates ###
### -----------------------------
deb http://deb.debian.org/debian/ stretch-updates main contrib non-free
#deb-src http://deb.debian.org/debian/ stretch-updates main contrib non-free

### -----------------------------
###Repositório (stretch) proposed-updates###
### -----------------------------
#deb http://deb.debian.org/debian/ stretch-proposed-updates main contrib non-free
#deb-src http://deb.debian.org/debian/ stretch-proposed-updates main contrib non-free

### -----------------------------
###Repositório (stretch) stretch-backports ###
### -----------------------------
deb http://deb.debian.org/debian/ stretch-backports main contrib non-free
#deb-src http://deb.debian.org/debian/ stretch-backports main contrib non-free " > /etc/apt/sources.list

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
