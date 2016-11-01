#!/bin/bash
#Sincronizar carpeta Programas

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/11-Drivers/ /home/fryntiz/0-MOUNT/DATOS/11-Drivers/
