#!/bin/bash

#Variables Generales
UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts_2"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"
DirPreferencias="$LugarDeInstalacion/PREFERENCIAS"
version="$(cat $LugarDeInstalacion/version)"

LongitudMenu='3'
MenuActual='Menú de Configuración Preferencias y Rutas'
Menu0='Ruta para guardar Backups'
#Permisos="$(sudo chmod 777 "$DirPreferencias/*" && sudo chown ""$UsuarioActual":"$UsuarioActual" $DirPreferencias/*")"

Borrar="Borrar todas las configuraciones y preferencias de rutas"
RepararPermisos="Reparar Permisos de archivos de configuración (Solo si dan error)"
Salir='Salir de este Menú'

NoFunca="(No hace nada aún)"

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
		echo -e "$azulC  Estas configuraciones solo las tienes que hacer 1 vez y se quedaran guardadas en la carpeta$rojoC 'PREFERENCIAS'$azulC del directorio raíz del programa$blanco"
		echo ""
		echo -e "   $rojoC 0)  $verdeC $Menu0"
		echo -e "   $rojoC $(expr $LongitudMenu - 2))  $verdeC $Borrar"
		echo -e "   $rojoC $(expr $LongitudMenu - 1))  $verdeC $RepararPermisos"

#Último Menú para salir:
		echo -e "   $rojoC $LongitudMenu) $magentaC  $Salir"
		echo ""

#Comentario impreso en pantalla donde muestra opciones disponibles a elegir
		echo -e "                   $azulC Elige una opción  (0 - $LongitudMenu)"
		echo ""

	read entrada
	case $entrada in

		0)#Configuración ruta para guardar BACKUPS
			clear
			echo "$Menu0"
			sleep 1
			#Mostramos la ruta que hay actualmente guardada
			echo -e "La ruta actual es: $(cat $DirPreferencias/backups.pref)"
			#Mostramos indicaciones
			echo -e "$amarillo Elige la ruta donde deseas$rojoC Guardar$amarillo tus copias de seguridad$blanco"
			echo ""
			echo -e "$verdeC Puedes utilizar cualquier ruta pero asegurate que funciona y no uses barra inclinada '/' al final$blanco"
			echo -e ""
			#Ejemplos
			echo -e "$amarillo A continuación te dejo dos ejemplos de rutas, solo tienes que escribir donde deseas guardar tus backups y pulsar$rojoC ENTER$blanco"
			echo -e "$azulC /home/usuario/Documentos/Backups"
			echo -e "$azulC ~/Documentos/Backups"
			echo ""
			echo ""
			#Entrada de ruta
			echo -e "$verdeC Guardar en:$rojoC"
			read entrada
			echo "$entrada" > "$DirPreferencias/backups.pref"
			echo ""
			echo ""
			clear
			echo -e "$verdeC Se ha guardado la siguiente ruta:"
			echo -e "$rojoC$entrada"
			echo ""
            sleep 2;;

		$(expr $LongitudMenu - 2))
			clear
			echo "$Borrar"
			echo -e "$rojoC Es posible que te pida la clave de administrador para Borrar los archivos de configuración"
			echo "$(sudo rm -R $DirPreferencias/*)"
			sleep 3
			echo "";;

		$(expr $LongitudMenu - 1))
			clear
			echo "$RepararPermisos"
			echo -e "$rojoC Es posible que te pida la clave de administrador para reparar los permisos"
			echo "$(sudo chmod 777 $DirPreferencias/*)"
			echo "$(sudo chown "$UsuarioActual":"$UsuarioActual" $DirPreferencias/*)"
			sleep 3
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
