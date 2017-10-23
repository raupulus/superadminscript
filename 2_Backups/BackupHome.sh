#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################


#############################
##   Variables Generales   ##
#############################
password=""
excluirDeBackup="-x{!home,!tmp,!var/log/,!proc,!mnt,!sys/,!media/,!run/media/,!dev/pts,!run/user/1000/} -xr{!lost+found,!.cache,!.trash}"

#Directorio: /home/backups /backups???
Preferencias="$(cat $DirPreferencias/backups.pref)"

NombreBackup="$Preferencias/0-TMP/backup_HOME_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2"
NombreBackupCifrado="$Preferencias/backup_HOME_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.7z"

clear

read -p "Introduce la contraseña de cifrado → " password1
clear
read -p "Introduce la contraseña de cifrado → " password2

if [ $password1 = $password2 ]
then
    echo -e "$amarillo Las dos claves coinciden$gris"
    echo -e "$azul Comenzará el Backup$gris"
    password=$password1
    sleep 2
else
    echo -e "$amarillo No coinciden las dos contraseñas"
    echo -e " Abortando Backup $gris"
    exit 1
fi

sudo tar -cvpjf  $NombreBackup --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=.cache --exclude=.trash --exclude=.Trash --exclude=0-MOUNT --exclude=1-MOUNT --exclude=1_GIT --exclude=2_Bases_de_Datos --exclude=3_Librerías --exclude=4_Programas --exclude=5_Entornos_de_Trabajo --exclude=6_Máquinas_Virtuales --exclude=7_Mis_Proyectos --exclude=8_Backups --exclude=9_Dropbox --exclude=10_GoogleDrive --exclude=11_CloudStation --exclude=12_Pentesting --exclude=Descargas --exclude=Documentos --exclude=Imágenes --exclude=NHCK --exclude=Plantillas --exclude=Vídeos --exclude=.PlayOnLinux/wineprefix --exclude=.local/share/Trash /home

sudo 7z a -t7z -r -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p$password $NombreBackup $NombreBackupCifrado
sudo chown $UsuarioActual:$UsuarioActual $NombreBackup
sudo chown $UsuarioActual:$UsuarioActual $NombreBackupCifrado
#rm $NombreBackup
mv $NombreBackupCifrado "$Preferencias/2_PC_Sobremesa/Raíz/"

#Finalizando
echo -e "$magentaC Se ha completado la copia de seguridad$gris"
echo -e "$gris"
