#!/bin/bash

#Variables Generales
UsuarioActual=$(whoami)
LugarDeInstalacion="~/Documento/0-Scripts_2"

##### CONSTANTES COLORES #####
negro="\033[0;30m"
rojo="\033[0;31m"
verde="\033[0;32m"
marron="\033[0;33m"
azul="\033[0;34m"
magenta="\033[0;35m"
cyan="\033[01;36m"
grisC="\033[0;37m"
gris="\033[1;30m"
rojoC="\033[1;31m"
verdeC="\033[1;32m"
amarillo="\033[1;33m"
azulC="\033[1;34m"
magentaC="\033[1;35m"
cyanC="\033[1;36m"
blanco="\033[1;37m"
subrayar="\E[4m"
parpadeoON="\E[5m"
parpadeoOFF="\E[0m"
resaltar="\E[7m"

#Script para Instalar en el Sistema Operativo
#Comprobado funcionamiento solo en Debian rama Estable
#Único idioma disponible de momento ESPAÑOL de ESPAÑA
#Necesario tener una consola funcionando con bash

clear;

#Nos aseguramos de que se encuentra instalado bash
sudo apt-get update
sudo apt-get install bash

#Configurar BASH ya que es un requisito para que se visualice y funcione correctamente
echo -e "$rojoC Reconfigurando bash (En el caso de que utilices Dash) $grisC"
echo -e "Pulsa$subrayar$verdeC 'Y' $grisC para continuar"
#Aquí introducir condicional (if echo $SHELL == /bin/bash) {exit o continue}else ------ rm /bin/sh | ln -s /bin/bash /bin/sh o así:
# sudo usermod -s /bin/bash $UsuarioActual

#Mostrar el usuario que soy y la ruta donde se instalará el menú
echo -e "Instalando script con el usuario: $verdeC$subrayar$UsuarioActual$grisC"
echo -e "El Menú se instalará en el directorio: $verdeC$subrayar$LugarDeInstalacion$grisC"

#Remover directorio de instalación si ya existe
echo -e "Limpiando instalación anterior si la hubiera"
# if $LugarDeInstalacion == --- {rm $LugarDeInstalacion} else {}

#Crear lugar de instalación
echo -e "Creando destino para la instalación"
# mkdir $LugarDeInstalacion

#Copiar programa dentro del directorio creado
echo -e "Instalando programa"
# cp ./* $LugarDeInstalacion/
echo -e "Programa instalado  "

echo "$LugarDeInstalacion/"
echo -e "$amarillo Aún no se ha definido el punto de instalación $grisC"
echo "Planeado tomar ~/ para instalar dentro del perfil usuario"
echo "Otra posibilidad es instalar dentro de /usr o dentro de /root"
