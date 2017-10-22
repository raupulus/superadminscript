#!/bin/bash
#Sincronizar carpeta Raspberry PI

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/14-RaspberryPI/ /home/fryntiz/0-MOUNT/DATOS/14-RaspberryPI/
