#!/bin/bash
#Sincronizar directorio ISOS

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/7-ISOS/ /home/fryntiz/0-MOUNT/DATOS/7-ISOS/
