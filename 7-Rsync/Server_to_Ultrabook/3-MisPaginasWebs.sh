#!/bin/bash
#Sincronizar directorio Mis Páginas webs

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/3-Mis_Páginas_WEBS/ /home/fryntiz/0-MOUNT/DATOS/3-Mis_Páginas_WEBS/
