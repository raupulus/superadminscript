#!/bin/bash
#Sincronizar directorio Programas

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/10-Programas/ /home/fryntiz/0-MOUNT/DATOS/10-Programas/
