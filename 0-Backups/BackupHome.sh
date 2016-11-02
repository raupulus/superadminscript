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

sudo tar -cvpjf  $NombreBackup --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=.cache --exclude=.trash --exclude=.Trash --exclude=0-MOUNT --exclude=1-MOUNT --exclude=1_GIT --exclude=2_Bases_de_Datos --exclude=3_Librerías --exclude=4_Programas --exclude=5_Entornos_de_Trabajo --exclude=6_Máquinas_Virtuales --exclude=7_Mis_Proyectos --exclude=8_Backups --exclude=9_Dropbox --exclude=10_GoogleDrive --exclude=11_CloudStation --exclude=12_Pentesting --exclude=Descargas --exclude=Documentos --exclude=Imágenes --exclude=NHCK --exclude=Plantillas --exclude=Vídeos --exclude=.PlayOnLinux/wineprefix --exclude=.local/share/Trash /home

sudo 7z a -t7z -r -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p$password $NombreBackup $NombreBackupCifrado
sudo chown $UsuarioActual:$UsuarioActual $NombreBackup
rm $NombreBackup
mv $NombreBackupCifrado "$Preferencias/2_PC_Sobremesa/Raíz/"

#Finalizando
echo -e "$magentaC Se ha completado la copia de seguridad$grisC"
echo -e "$grisC"
