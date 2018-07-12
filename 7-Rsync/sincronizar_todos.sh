#!/bin/bash
## Sincronizar todas las carpetas con los scripts para rsync de este directorio
echo "Comenzando Sincronización"
./Server_to_Ultrabook/2-ArchivosPersonales.sh

./Server_to_Ultrabook/3-LibreriasWeb.sh

./Server_to_Ultrabook/4-LibreriasDiseñoGrafico.sh

./Server_to_Ultrabook/5-Multimedia.sh

./Server_to_Ultrabook/6-ManualesProductos.sh

./Server_to_Ultrabook/7-ISOS.sh

echo "terminado"
