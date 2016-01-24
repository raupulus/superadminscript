#!/bin/bash
tar -cvpjf "/home/fryntiz/1-MOUNT/DATOS/0_APOYO/0_Backups/1_HOME/backup_home_AÑO`date +%y`_MES`date +%b`_DIA`date +%d`.tar.bz2" --exclude=lost+found --exclude=backup*.tar.bz2 --exclude=.trash --exclude=1-MOUNT --exclude=.cache --exclude=.trash --exclude=Documentos --exclude=Imágenes /home






#DESCOMPRIMIR
#Si utilizaste el método de de compresión gzip:
#tar -xvpzf /backup.tgz -C /
#Si utilizaste el método de compresión bz2:
#tar -xvpjf backup.tar.bz2 -C /

