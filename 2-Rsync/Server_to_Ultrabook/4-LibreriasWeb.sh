#!/bin/bash
#Sincronizar carpeta Librerías Web

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/4-Librerías_WEB/ /home/fryntiz/0-MOUNT/DATOS/4-Librerías_WEB/
