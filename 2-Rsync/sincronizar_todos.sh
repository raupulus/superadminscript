#!/bin/bash
#Sincronizar todas las carpetas con los scripts para rsync de este directorio
echo "comenzando"
./Server_to_Ultrabook/1-Trabajo.sh

./Server_to_Ultrabook/2-ProyectosWeb.sh

./Server_to_Ultrabook/3-MisPaginasWebs.sh

./Server_to_Ultrabook/4-LibreriasWeb.sh

./Server_to_Ultrabook/5-LibreriasDiseñoGrafico.sh

./Server_to_Ultrabook/6-MisApuntes.sh

./Server_to_Ultrabook/7-ArchivosPersonales.sh

./Server_to_Ultrabook/8-Multimedia.sh

./Server_to_Ultrabook/9-PersonalizarLinux.sh

./Server_to_Ultrabook/10-Programas.sh

./Server_to_Ultrabook/11-Drivers.sh

./Server_to_Ultrabook/12-ISOS.sh

./Server_to_Ultrabook/13-NHCK.sh

./Server_to_Ultrabook/14-RaspberryPI.sh

#./Server_to_Ultrabook/home-proyectos-video.sh
#./Ultrabook_to_NAS/home-proyectos-video.sh

echo "terminado"
