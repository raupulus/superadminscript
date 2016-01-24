#!/bin/bash

tar -cvpjf "/home/fryntiz/1-MOUNT/DATOS/0_APOYO/0_Backups/2_SYSTEM/backup_system_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2" --exclude=/proc --exclude=lost+found --exclude=System_backup*.tar.bz2 --exclude=/mnt --exclude=/sys --exclude=/media --exclude=.cache --exclude=.trash --exclude=/run/media --exclude=/var/log --exclude=/tmp --exclude=/home /


#DESCOMPRIMIR
#Si utilizaste el método de de compresión gzip:
#tar -xvpzf /backup.tgz -C /
#Si utilizaste el método de compresión bz2:
#tar -xvpjf backup.tar.bz2 -C /
# CREAR DIRECTORIOS EXCLUIDOS: mkdir /proc /mnt /sys /media /tmp /var/log /home
