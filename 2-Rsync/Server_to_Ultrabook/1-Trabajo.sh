#!/bin/bash
#Sincronizar Directorio de Trabajo
rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/1-Trabajo/ /home/fryntiz/0-MOUNT/DATOS/1-Trabajo/
