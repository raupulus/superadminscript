#!/bin/bash

#Variables Generales
password=""
nombreBackup="TRABAJO_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`"
UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts_2"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"
DirPreferencias="$LugarDeInstalacion/PREFERENCIAS/backups.pref"
Preferencias="$(cat $DirPreferencias)"

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

7z a -t7z -r -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p$password ~/8_Backups/0-TMP/$nombreBackup.7z -x{!lost+found,!.Trash*} /media/fryntiz/DATOS_2TB/1-Trabajo

mv ~/8_Backups/0-TMP/$nombreBackup.7z ~/8_Backups/Trabajo/$nombreBackup.7z

#Finalizando
echo -e "$magentaC Se ha completado la copia de seguridad$grisC"
echo -e "$grisC"
