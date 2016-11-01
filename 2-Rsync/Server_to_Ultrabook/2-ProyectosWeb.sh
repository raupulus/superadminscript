#!/bin/bash
#Sincronizar carpeta Proyectos WEB

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/2-Proyectos_WEB/ /home/fryntiz/0-MOUNT/DATOS/2-Proyectos_WEB/
