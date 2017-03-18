#!/bin/bash
#Sincronizar directorio Multimedia

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/8-Multimedia/ /home/fryntiz/0-MOUNT/DATOS/8-Multimedia/
