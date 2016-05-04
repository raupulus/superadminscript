#!/bin/bash
#Sincronizar carpeta Mis Páginas webs

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/4-Mis_Páginas_WEBS/ /home/fryntiz/1-MOUNT/DATOS/4-Mis_Páginas_WEBS/
