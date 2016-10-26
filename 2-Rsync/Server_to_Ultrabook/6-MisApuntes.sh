#!/bin/bash
#Sincronizar carpeta Mis Apuntes

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/6-Mis_Apuntes/ /home/fryntiz/1-MOUNT/DATOS/6-Mis_Apuntes\
