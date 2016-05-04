#!/bin/bash
#Sincronizar carpeta Librerías de diseño Gráfico
#rsync -av --delete root@192.168.0.254:/home/nerviozzo/Documentos /media/DATOS_/PRUEBA_RSYNC/


rsync -av --delete --progress root@172.18.1.1:/media/fryntiz/DATOS_2TB/2-Librerías_Diseño_Gráfico/ /home/fryntiz/1-MOUNT/DATOS/2-Librerías_Diseño_Gráfico/
