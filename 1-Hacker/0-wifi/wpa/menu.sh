#!/bin/bash

#Variables Generales
LongitudMenu='4';
MenuActual='Menú Hacking Redes WPA';
Menu0='GoyScript para WPA';
Menu1='GoyScript para WPA2';
Menu2='Desencriptar Hanshake';
Menu3='Obtener Hanshake';

Salir='Salir de este Menú';

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

clear;

# Menu
while :
	do
		echo "";
		echo -e "                 $amarillo $MenuActual ";
		echo "";
		echo -e "   $rojoC 0)  $verdeC $Menu0";
		echo -e "   $rojoC 1)  $verdeC $Menu1 ";
		echo -e "   $rojoC 2)  $verdeC $Menu2 ";
		echo -e "   $rojoC 3)  $verdeC $Menu3 ";

#Último Menú para salir:
		echo -e "   $rojoC $LongitudMenu) $magentaC $Salir";
		echo "";
		echo "";

#Comentario impreso en pantalla donde muestra opciones disponibles a elegir
		echo -e "                   $azulC Elige una opción  (0 - $LongitudMenu)";
		echo "";
		echo "";

	read entrada
	case $entrada in

		0)#Goyscript WPA
			clear;
			echo "$Menu0";
			sleep 1;
			cd ../goyscript/;
			sh goyscriptWPA
			cd ..
			cd wpa;;

		1)#Goyscript WPA2
			clear;
			echo "$Menu1";
			sleep 1;
			cd ../goyscript/;
			sh goyscriptWPA
			cd ..
			cd wpa;;

		2)#Desencriptar Hanshake
			clear;
			echo "$Menu2";
			sleep 1;
			cd DecryptHandshake;
			sh menu.sh;
			cd ..;;

		3)#Obtener Handshake
			clear;
			echo "$Menu3";
			sleep 1;
			cd ObtenerHandshake;
			sh menu.sh;
			cd ..;;

		$LongitudMenu)#Salir de este Menú
			clear;
			echo -e "$grisC"
			echo "Nos vemos, ya volverás....";
			echo ""
			exit 1;;

		*)#Cualquier otra opción que no sea las anteriores
			clear;
			echo "";
			echo -e "                      $rojoC ATENCIÓN: ERROR y de los chungos";
			echo "";
			echo -e "$rojoC Pulsar $amarillo $entrada  $rojoC no va a conseguir hacer nada porque no está en la lista pedazo de melón.

¿Eso son dedos o es un catálogo de salsichas?, pulsa solo un número del$amarillo 1$rojoC al$amarillo 8";
			echo "";
			echo "";
			echo "";
			echo -e "               $azulC Pulsa sobre cualquier tecla para volver al menú...";
			echo -e "$grisC"
	read foo;;
esac
done
