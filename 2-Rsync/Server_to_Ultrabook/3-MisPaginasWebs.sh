#!/bin/bash
#Sincronizar carpeta Mis Páginas webs

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/3-Mis_Páginas_WEBS/ /home/fryntiz/0-MOUNT/DATOS/3-Mis_Páginas_WEBS/
