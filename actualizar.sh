#!/bin/bash

#Variables Generales
temp="/tmp/fryntizMenuShell/"
git=".git"
VersionActual="beta0.1 creando la base del menú"

##### CONSTANTES COLORES #####
negro="\033[0;30m"
rojo="\033[0;31m"
verde="\033[0;32m"
marron="\033[0;33m"
azul="\033[0;34m"
magenta="\033[0;35m"
cyan="\033[01;36m"
grisC="\033[0;37m"
gris="\033[1;30m"
rojoC="\033[1;31m"
verdeC="\033[1;32m"
amarillo="\033[1;33m"
azulC="\033[1;34m"
magentaC="\033[1;35m"
cyanC="\033[1;36m"
blanco="\033[1;37m"
subrayar="\E[4m"
parpadeoON="\E[5m"
parpadeoOFF="\E[0m"
resaltar="\E[7m"

#Script para Actualizar
#Comprobado funcionamiento solo en Debian rama Estable
#Único idioma disponible de momento ESPAÑOL de ESPAÑA

clear;

#Comprobar versión y cambios
echo -e "$verdeC        Comprobando versión$grisC"
sleep 1
clear
echo -e "$verdeC        Comprobando versión...$grisC"
sleep 1
clear
echo -e "$verdeC        Comprobando versión...$rojoC'OK'$grisC"
echo -e "$verdeC               Versión actual: $rojoC$VersionActual$grisC"
echo ""

#Según la versión hay dos posibilidades: 1-Actualizar mediante git 2-Versión grande que se descargará en /tmp En el futuro crear condiciones y comprobación de versión, por ahora solo actualiza en bruto con git push
echo -e "$verdeC        Descargando contenido$grisC"
#Condicional if: -d para comprobar si existe dir y -f para archivos -x permisos de ejecución
if [ -d ".git" ]
	then
		echo -e "$rojoC El repositorio git si está inicializado$grisC"
		git add *
		git commit -a -m "auto dev server commit"
		git pull origin master
	else
		echo -e "$rojoC .git No existe$grisC"
		git init
		git remote add origin https://github.com/fryntiz/ShellScript
		git add *
		git commit -a -m "auto dev server commit"
		git fetch origin master
		git merge -s recursive -X theirs origin/master
		git pull origin master
fi

#Reinstalación limpia
#mkdir $temp
#cd $temp
#git clone https://github.com/fryntiz/ShellScript
#sudo sh instalador.sh

echo -e "$amarillo Aún estamos en pruebas y es muy probable que falle el actualizador automático$grisC"
