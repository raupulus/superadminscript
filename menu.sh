#!/bin/bash

#Variables Generales
LongitudMenu='15'
MenuActual='Menú Principal de Administración - by Fryntiz'
Menu0='Backups o Copias de seguridad'
Menu1='Hacking Tool'
Menu2='Sincronizar directorios mediante RSYNC'
Menu3='Gestionar Servicios del Sistema'
Menu4='Gestión de Servidores'
Menu5='Limpiar Sistema Operativo'
Menu6='Gestión de Repositorios GIT'
Menu7='Gestión de INTRANET'
Menu8='Dominios y Hosting'
Menu9='Firewall Local'
Menu10='Gestión de Software Debian (DPKG y APT)'
Menu11='Personalización del Sistema Operativo y su software'
Menu12='Salud del Hardware y del Sistema'
Configurar="Configurar Opciones para el funcionamiento del Menú"
InstalarActualizar='Instalar o Actualizar este programa'
Salir='Salir de este Menú'

NoFunca="(No hace nada aún)"

UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts_2"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"
DirPreferencias="$LugarDeInstalacion/PREFERENCIAS"
version="$(cat $LugarDeInstalacion/version)"

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

clear

# Menu
while :
	do
		echo ""
		echo -e "             $amarillo $MenuActual $rojoC   $version"
		echo ""
		echo -e "   $rojoC 0)  $verdeC $Menu0"
		echo -e "   $rojoC 1)  $verdeC $Menu1"
		echo -e "   $rojoC 2)  $verdeC $Menu2"
		echo -e "   $rojoC 3)  $verdeC $Menu3 $amarillo$NoFunca"
		echo -e "   $rojoC 4)  $verdeC $Menu4 $amarillo$NoFunca"
		echo -e "   $rojoC 5)  $verdeC $Menu5 $amarillo$NoFunca"
		echo -e "   $rojoC 6)  $verdeC $Menu6 $amarillo$NoFunca"
		echo -e "   $rojoC 7)  $verdeC $Menu7 $amarillo$NoFunca"
		echo -e "   $rojoC 8)  $verdeC $Menu8 $amarillo$NoFunca"
		echo -e "   $rojoC 9)  $verdeC $Menu9 $amarillo$NoFunca"
		echo -e "   $rojoC 10) $verdeC $Menu10 $amarillo$NoFunca"
		echo -e "   $rojoC 11) $verdeC $Menu11 $amarillo$NoFunca"
		echo -e "   $rojoC 12) $verdeC $Menu12 $amarillo$NoFunca"

#Entrada para configurar opciones
		echo -e "   $rojoC $(expr $LongitudMenu - 2)) $rojo $Configurar"

#Penúltimo menú para Instalar o Actualizar
		echo -e "   $rojoC $(expr $LongitudMenu - 1)) $cyan $InstalarActualizar"

#Último Menú para salir:
		echo -e "   $rojoC $LongitudMenu) $magentaC $Salir"
		echo ""

#Comentario impreso en pantalla donde muestra opciones disponibles a elegir
		echo -e "                   $azulC Elige una opción  (0 - $LongitudMenu)"
		echo -e "$blanco"

	read entrada
	case $entrada in

		0)#Generar Todos los BACKUPS
			clear
			echo "$Menu0"
			sleep 1
			cd 0-Backups
			sh menu.sh
			cd ..
			sleep 1;;

		1)#Hacking Tools
			clear
			echo "$Menu1"
			sleep 1
			cd 1-Hacker
			sh menu.sh
			cd ..
			sleep 1;;

		2)#Sincronizar todos los RSYNC
			clear
			echo "$Menu2"
			cd 2-Rsync
			sh sincronizar_todos.sh
			cd ..
			sleep 1;;

		3)#Servicios del sistema
			echo "$Menu3"
			cd 3-Servicios
			sh menu.sh
			cd ..
			sleep 1;;

		4)#Servidores
			echo "$Menu4"
			cd 4-Servidores
			sh menu.sh
			cd ..
			sleep 1;;

		5)#Limpiar Sistema
			echo "$Menu5"
			cd 5-LimpiarSistema
			sh menu.sh
			cd ..
			sleep 1;;

		6)#Gestión de Repositorios GIT
			echo "$Menu6"
			cd 5-LimpiarSistema
			sh menu.sh
			cd ..
			sleep 1;;

		7)#Intranet
			echo "$Menu7"
			cd 7-Intranet
			echo "YO AÚN NO HAGO NADA"
			sh menu.sh
			cd ..
			sleep 1;;

		8)#Hosting
			echo "$Menu8"
			cd 8-Hosting
			echo "YO AÚN NO HAGO NADA"
			sh menu.sh
			cd ..
			sleep 1;;

		9)#FirewallLocal
			echo "$Menu9"
			cd 9-FirewallLocal
			echo "YO AÚN NO HAGO NADA"
			sh menu.sh
			cd ..
			sleep 1;;

		10)#GestorSoftware
			echo "$Menu10"
			cd 10-GestorSoftware
			echo "YO AÚN NO HAGO NADA"
			sh menu.sh
			cd ..
			sleep 1;;

		11)#Personalización Sistema
			echo "$Menu11"
			cd 11-PersonalizacionSistema
			echo "YO AÚN NO HAGO NADA"
			sh menu.sh
			cd ..
			sleep 1;;

		12)#Salud Hardware
			echo "$Menu12"
			cd 12-SaludHardware
			echo "YO AÚN NO HAGO NADA"
			sh menu.sh
			cd ..
			sleep 1;;

		$(expr $LongitudMenu - 2))#Configurar todas las opciones
			echo "$Configurar"
            sh personalizar.sh
			echo "";;

		$(expr $LongitudMenu - 1))#Instalar o Actualizar
			echo "$InstalarActualizar"
            echo -e "$amarillo Esto llevará a un menú para elegir entre:$blanco"
            echo -e "$rojoC    Instalar$blanco"
            echo -e "$rojoC    Actualizar$blanco"
            echo -e "$rojoC    Eliminar instalación y reinstalar en limpio$blanco"
            sleep 6
			echo "";;

		$LongitudMenu)#Salir de este Menú
			clear
			echo -e "$grisC"
			echo "Nos vemos, ya volverás...."
			echo ""
			exit 1;;

		*)#Cualquier otra opción que no sea las anteriores
			clear
			echo ""
			echo -e "                      $rojoC ATENCIÓN: ERROR y de los chungos"
			echo ""
			echo -e "$rojoC Pulsar $amarillo $entrada  $rojoC no va a conseguir hacer nada porque no está en la lista pedazo de melón.

¿Eso son dedos o es un catálogo de salsichas?, pulsa solo un número del$amarillo 0$rojoC al$amarillo $LongitudMenu"
			echo ""
			echo ""
			echo ""
			echo -e "               $azulC Pulsa sobre cualquier tecla para volver al menú..."
			echo -e "$grisC"
	read foo;;
esac
done
