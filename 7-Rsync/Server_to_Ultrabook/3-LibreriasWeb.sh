#!/bin/bash
#Sincronizar directorio Librerías Web

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/4-Librerías_WEB/ /home/fryntiz/0-MOUNT/DATOS/3-Librerías_WEB/
