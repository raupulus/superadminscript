#!/bin/bash

#Variables Generales
password=""
excluirDeBackup="-x{!home,!tmp,!var/log/,!proc,!mnt,!sys/,!media/,!run/media/,!dev/pts,!run/user/1000/} -xr{!lost+found,!.cache,!.trash}"

UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"

#Directorio: /home/fryntiz/8_Backups/2_PC_Sobremesa/Raíz
DirPreferencias="$LugarDeInstalacion/PREFERENCIAS/backups.pref"
Preferencias="$(cat $DirPreferencias)"

NombreBackup="$Preferencias/0-TMP/backup_HOME_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2"
NombreBackupCifrado="$Preferencias/backup_HOME_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.7z"

##### CONSTANTES COLORES #####
grisC="\033[0;37m"
rojoC="\033[1;31m"
verdeC="\033[1;32m"
azulC="\033[1;34m"
magentaC="\033[1;35m"
cyanC="\033[1;36m"
blanco="\033[1;37m"
amarillo="\033[1;33m"

clear
echo -e "$rojoC     Introduce la contraseña$verdeC"
read entrada
password1=$entrada

clear
echo -e "$rojoC     Vuelve a introducir la contraseña$verdeC"
read entrada1
password2=$entrada1
echo -e "$grisC"
if [ $password1 = $password2 ]
then
	echo -e "$amarillo Las dos claves coinciden"
	echo -e "$azulC Comenzará el Backup$grisC"
	password=$password1
	sleep 2
else
	echo -e "$amarillo No coinciden las dos contraseñas"
	echo -e " Vuelve a intentarlo $grisC"
	exit 1
fi

#sudo 7z a -t7z -r -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p$password /home/fryntiz/8_Backups/0-TMP/$nombreBackup.7z -x{!home,!tmp,!var/log/,!proc,!mnt,!sys/,!media/,!run/media/,!dev/pts,!run/user/1000/} -xr{!lost+found,!.cache,!.trash} /

#sudo chown $UsuarioActual:$UsuarioActual $nombreBackup.7z
#mv ~/8_Backups/0-TMP/$nombreBackup.7z ~/8_Backups/2_PC_Sobremesa/Raíz/$nombreBackup.7z


sudo tar -cvpjf  $NombreBackup --exclude=/proc --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=/mnt --exclude=/sys/ --exclude=/media --exclude=.cache --exclude=.trash --exclude=/run/media --exclude=/var/log --exclude=/tmp --exclude=/var/tmp --exclude=/home --exclude=/run/media --exclude=/run/log --exclude=/dev/pts --exclude=.Trash /home

sudo chown $UsuarioActual:$UsuarioActual $NombreBackup

sudo 7z a -t7z -r -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p$password $NombreBackup $NombreBackupCifrado
rm $NombreBackup
mv $NombreBackupCifrado "$Preferencias/2_PC_Sobremesa/Raíz/"

#Finalizando
echo -e "$magentaC Se ha completado la copia de seguridad$grisC"
echo -e "$grisC"

#tar -cvpjf "$Preferencias/backup_HOME_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2" --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=.trash --exclude=1-MOUNT --exclude=.cache --exclude=.trash --exclude=Documentos --exclude=Imágenes /home
