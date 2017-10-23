#!/bin/bash

#Variables Generales
UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts_2"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"
DirPreferencias="$LugarDeInstalacion/PREFERENCIAS/backups.pref"
Preferencias="$(cat $DirPreferencias)"

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

#Crear Backup para directorio HOME con todos los datos de usuarios
echo -e "$verdeC Comenzando Copia de Seguridad para$amarillo '/Home' $blanco"
sleep 2
#Backup para directorio Home
sh ./BackupHome.sh

#Backup para todo el Sistema
echo -e "$verdeC Comenzando Copia de Seguridad para$amarillo 'Sistema'$blanco"
sleep 2
sh ./BackupSystem.sh

#Mensaje de finalización
echo ""
echo -e "$verdeC Trabajo terminado$blanco"
echo ""
echo -e "$verdeC Puedes comprobar si se ha realizado correctamente el BACKUP en el directorio elegido dentro de PREFERENCIAS:$rojoC $Preferencias $blanco"
sleep 2
