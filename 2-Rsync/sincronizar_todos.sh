#!/bin/bash
#Sincronizar todas las carpetas con los scripts para rsync de este directorio
echo "comenzando"
./Server_to_Ultrabook/1-Trabajo.sh

./Server_to_Ultrabook/1-ProyectosWeb.sh

./Server_to_Ultrabook/2-LibreriasDiseñoGrafico.sh

./Server_to_Ultrabook/3-LibreriasWeb.sh

./Server_to_Ultrabook/4-MisPaginasWebs.sh

./Server_to_Ultrabook/5-ArchivosPersonales.sh

./Server_to_Ultrabook/6-MiBiblioteca.sh

./Server_to_Ultrabook/7-MisApuntes.sh

./Server_to_Ultrabook/8-Multimedia.sh

./Server_to_Ultrabook/9-PersonalizarLinux.sh

./Server_to_Ultrabook/10-ISOS.sh

./Server_to_Ultrabook/11-Programas.sh

./Server_to_Ultrabook/12-Otros.sh

./Server_to_Ultrabook/13-RaspberryPI.sh

#./Server_to_Ultrabook/home-proyectos-video.sh
#./Ultrabook_to_NAS/home-proyectos-video.sh

echo "terminado"
