#!/bin/bash
#Sincronizar directorio Archivos Personales

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/2-Archivos_Personales/ /home/fryntiz/0-MOUNT/DATOS/2-Archivos_Personales/
