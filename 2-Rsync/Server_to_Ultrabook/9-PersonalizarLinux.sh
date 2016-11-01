#!/bin/bash
#Sincronizar carpeta Personalizar Linux

rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/9-Personalización_Linux/ /home/fryntiz/0-MOUNT/DATOS/9-Personalización_Linux/
