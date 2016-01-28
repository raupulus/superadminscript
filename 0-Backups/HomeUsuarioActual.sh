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

#Mostrando información sobre donde se efectuará la copia de seguridad
echo -e "El lugar para el Backup elegido es $Preferencias"
sleep 2

echo -e "La ruta completa y el nombre para el BACKUP es:"
echo "$Preferencias/backup_"$UsuarioActual"_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2"
sleep 2

#Creando la copia de seguridad
echo -e "La copia de seguridad comenzará a crearse en 5 segundos"
echo -e "Puedes pulsar control+C para impedir que comience"
sleep 1
echo -e "5 ... Para comenzar"
sleep 1
echo -e "4 ... Para comenzar"
sleep 1
echo -e "3 ... Para comenzar"
sleep 1
echo -e "2 ... Para comenzar"
sleep 1
echo -e "1 ... Para comenzar"
sleep 1
tar -cvpjf "$Preferencias/backup_$UsuarioActual&_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2" --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=.trash --exclude=1-MOUNT --exclude=.cache --exclude=.trash --exclude=Documentos --exclude=Imágenes /home

#Finalizando
echo -e "El script Finaliza"
echo -e "Comprueba que se ha realizado correctamente el BACKUP en el directorio elegido: $Preferencias"
