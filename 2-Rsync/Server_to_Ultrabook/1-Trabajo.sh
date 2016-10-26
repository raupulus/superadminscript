#!/bin/bash
#Sincronizar carpeta Proyectos WEB

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/1-Trabajo/ /home/fryntiz/1-MOUNT/DATOS/1-Proyectos_WEB/
