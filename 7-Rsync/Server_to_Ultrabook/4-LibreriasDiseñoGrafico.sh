#!/bin/bash
#Sincronizar directorio Librerías de diseño Gráfico

rsync -avzt --delete --progress --exclude '.SynologyWorkingDirectory' root@172.18.1.1:/media/fryntiz/DATOS_2TB/5-Librerías_Diseño_Gráfico/ /home/fryntiz/0-MOUNT/DATOS/4-Librerías_Diseño_Gráfico/
