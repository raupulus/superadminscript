#!/bin/bash
#Sincronizar carpeta Programas

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/11-Programas/ /home/fryntiz/1-MOUNT/DATOS/11-Programas/
