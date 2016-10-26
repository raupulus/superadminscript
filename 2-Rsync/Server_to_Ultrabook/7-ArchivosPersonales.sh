#!/bin/bash
#Sincronizar carpeta Archivos Personales

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/7-Archivos_Personales/ /home/fryntiz/1-MOUNT/DATOS/7-Archivos_Personales/
