#!/bin/bash

#Variables Generales
password=""
excluirDeBackup="-x{!0-MOUNT,!1_GIT,!1-MOUNT,!2_Bases_de_Datos,!3_Librerías,!4_Programas,!5_Entornos_de_Trabajo,!6_Máquinas_Virtuales,!7_Mis_Proyectos,!Backups,!9_Dropbox,!10_GoogleDrive,!11_CloudStation,!12_Pentesting,!Descargas,!Documentos,!Imágenes,!NHCK,!Plantillas,!Vídeos} -xr{!lost+found,!.cache,!.trash}"
nombreBackup="BACKUP_HOME_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`"
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

sudo 7z a -t7z -r -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p$password /home/fryntiz/8_Backups/0-TMP/$nombreBackup.7z -x{!0-MOUNT,!1_GIT,!1-MOUNT,!2_Bases_de_Datos,!3_Librerías,!4_Programas,!5_Entornos_de_Trabajo,!6_Máquinas_Virtuales,!7_Mis_Proyectos,!8_Backups,!9_Dropbox,!10_GoogleDrive,!11_CloudStation,!12_Pentesting,!Descargas,!Documentos,!Imágenes,!NHCK,!Plantillas,!Vídeos,!.PlayOnLinux/wineprefix,!.local/share/Trash} -xr{!lost+found,!.cache,!.trash} /home/fryntiz/

sudo chown $UsuarioActual:$UsuarioActual $nombreBackup.7z
mv ~/8_Backups/0-TMP/$nombreBackup.7z ~/8_Backups/2_PC_Sobremesa/Raíz/$nombreBackup.7z

whoami
echo $UsuarioActual
#Finalizando
echo -e "$magentaC Se ha completado la copia de seguridad$grisC"
echo -e "$grisC"


#tar -cvpjf "$Preferencias/backup_HOME_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2" --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=.trash --exclude=1-MOUNT --exclude=.cache --exclude=.trash --exclude=Documentos --exclude=Imágenes /home
#tar -cvpjf "$Preferencias/backup_"$UsuarioActual"_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2" --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=.trash --exclude=1-MOUNT --exclude=.cache --exclude=.trash --exclude=Documentos --exclude=Imágenes /home/$UsuarioActual
