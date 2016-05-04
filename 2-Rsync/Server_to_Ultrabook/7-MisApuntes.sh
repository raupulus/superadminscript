#!/bin/bash
#Sincronizar carpeta Mis Apuntes

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/7-Mis_Apuntes/ /home/fryntiz/1-MOUNT/DATOS/7-Mis_Apuntes\
