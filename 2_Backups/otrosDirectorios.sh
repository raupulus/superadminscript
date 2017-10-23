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

}

function cifrarBackup() {

}

#Finalizando
echo -e "$magenta Se ha completado la copia de seguridad$gris"
