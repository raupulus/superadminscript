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
