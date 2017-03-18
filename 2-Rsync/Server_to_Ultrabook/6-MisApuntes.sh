#!/bin/bash
#Sincronizar directorio Mis Apuntes

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/6-Mis_Apuntes/ /home/fryntiz/0-MOUNT/DATOS/6-Mis_Apuntes\
