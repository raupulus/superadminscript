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

function crearPassword() {
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
}
crearPassword

function crearBackup() {
    sudo tar -cvpjf  $NombreBackup --exclude=/proc --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=/mnt --exclude=/sys/ --exclude=/media --exclude=.cache --exclude=.trash --exclude=/run/media --exclude=/var/log --exclude=/tmp --exclude=/var/tmp --exclude=/home --exclude=/run/media --exclude=/run/log --exclude=/dev/pts --exclude=.Trash /
}

function cifrarBackup() {
    sudo 7z a -t7z -r -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p$password $NombreBackup $NombreBackupCifrado

    sudo chown $UsuarioActual:$UsuarioActual $NombreBackup
    rm $NombreBackup
    mv $NombreBackupCifrado "$Preferencias/2_PC_Sobremesa/Raíz/"
}

#Finalizando
echo -e "$magenta Se ha completado la copia de seguridad$gris"
