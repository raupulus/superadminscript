#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

############################
##   Constantes Colores   ##
############################
amarillo="\033[1;33m"
azul="\033[1;34m"
blanco="\033[1;37m"
cyan="\033[1;36m"
gris="\033[0;37m"
magenta="\033[1;35m"
rojo="\033[1;31m"
verde="\033[1;32m"

#############################
##   Variables Generales   ##
#############################
version="$(cat $DirInstalacion/version.csv)"
VersionActual="$version creando la base del menú"

clear;

#Comprobar versión y cambios
echo -e "$verde        Comprobando versión$gris"
sleep 1
clear
echo -e "$verde        Comprobando versión...$gris"
sleep 1
clear
echo -e "$verde        Comprobando versión...$rojo'OK'$gris"
echo -e "$verde               Versión actual: $rojo$VersionActual$gris"
echo ""

echo -e "$verde        Descargando contenido$gris"
#Condicional if: -d para comprobar si existe dir y -f para archivos -x permisos de ejecución
if [ -d ".git" ]
    then
        echo -e "$rojo El repositorio git si está inicializado$gris"
        git fetch origin master
        git pull origin master
        git stash
        clear
        git pull origin master
    else
        echo -e "$rojo .git No existe$gris"
        git init
        git remote add origin https://github.com/fryntiz/SuperScriptBash
        git fetch origin master
        git pull origin master
        git stash
        clear
        git pull origin master
fi

#Pantear una reinstalación limpia forzosa respetando archivos de configuración
#Reinstalación limpia
#git clone https://github.com/fryntiz/SuperScriptBash ~/.SuperScriptBash
#cd ~/.SuperScriptBash
#. main.sh
#sudo sh instalador.sh

echo -e "$amarillo Aún estamos en pruebas y es muy probable que falle el actualizador automático$gris"
