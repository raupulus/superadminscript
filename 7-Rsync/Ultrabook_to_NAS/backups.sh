#!/bin/bash
#Sincronizar el directorio local desde BACKUPS al servidor nhckserver


rsync -av --delete --progress /media/DATOS/7\ -\ Backups/Portatil-Debian-Estable/ root@172.18.0.3:/media/nerviozzo/DATOS_2TB/13\\\ -\\\ Backups/3\\\ -\\\ PC\\\ Portatil/


