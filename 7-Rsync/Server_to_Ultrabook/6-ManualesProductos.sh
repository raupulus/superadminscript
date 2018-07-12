#!/bin/bash
#Sincronizar directorio Manuales

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/6-Manuales_Productos/ /home/fryntiz/0-MOUNT/DATOS/6-Manuales_Productos/
