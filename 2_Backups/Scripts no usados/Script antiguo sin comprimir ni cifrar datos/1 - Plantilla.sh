#!/bin/bash

tar -cvpjf "/media/nerviozzo/1T DATOS USB/12 - Save DEBIAN/backup.tar.bz2" --exclude=/proc --exclude=lost+found --exclude=/backup.tar.bz2 --exclude=/mnt --exclude=/sys --exclude=/media --exclude=/var/log --exclude=/tmp /


#DESCOMPRIMIR
#Si utilizaste el método de de compresión gzip: 
#tar -xvpzf /backup.tgz -C /
#Si utilizaste el método de compresión bz2: 
#tar -xvpjf backup.tar.bz2 -C /
# CREAR DIRECTORIOS EXCLUIDOS: mkdir /proc /lost+found /mnt /sys /media /tmp /var/log
