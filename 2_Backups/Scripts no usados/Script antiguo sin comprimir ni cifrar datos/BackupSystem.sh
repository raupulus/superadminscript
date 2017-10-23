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
echo ""
echo -e "$verdeC El lugar para el Backup elegido es$rojoC $Preferencias"
echo ""
sleep 2

echo -e "$verdeC La ruta completa y el nombre para el BACKUP es:$grisC"
echo -e "$rojoC$Preferencias/backup_"$UsuarioActual"_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2$grisC"
echo ""
sleep 2

#Creando la copia de seguridad
echo -e "$rojoC La copia de seguridad comenzará a crearse en 5 segundos$grisC"
echo -e "$verdeC Puedes pulsar$rojoC control+C$verdeC para impedir que comience$grisC"
sleep 1
echo -e "$rojoC 5 ...$amarillo Para comenzar"
sleep 1
echo -e "$rojoC 4 ...$amarillo Para comenzar"
sleep 1
echo -e "$rojoC 3 ...$amarillo Para comenzar"
sleep 1
echo -e "$rojoC 2 ...$amarillo Para comenzar"
sleep 1
echo -e "$rojoC 1 ...$amarillo Para comenzar"
sleep 1
echo -e "$blanco"
tar -cvpjf "$Preferencias/backup_SYSTEM_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2" --exclude=/proc --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=/mnt --exclude=/sys --exclude=/media --exclude=.cache --exclude=.trash --exclude=/run/media --exclude=/var/log --exclude=/tmp --exclude=/home /
echo ""

#Finalizando
echo -e "$magentaC El script Finaliza$grisC"
echo -e "$verdeC Comprueba que se ha realizado correctamente el BACKUP en el directorio elegido: $rojoC$Preferencias$grisC"
echo -e "$blanco"

#DESCOMPRIMIR
#Si utilizaste el método de de compresión gzip:
#tar -xvpzf /backup.tgz -C /
#Si utilizaste el método de compresión bz2:
#tar -xvpjf backup.tar.bz2 -C /
# CREAR DIRECTORIOS EXCLUIDOS: mkdir /proc /mnt /sys /media /tmp /var/log /home
