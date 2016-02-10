#!/bin/bash

#Variables
repeticiones=""
navegador=""
maxPaginasSimultaneas=""
sitioweb=""
contador="0"
logo="
                       __                      _    _
                      / _| _ __  _   _  _ __  | |_ (_) ____
                     | |_ | '__|| | | || '_ \ | __|| ||_  /
                     |  _|| |   | |_| || | | || |_ | | / /
                     |_|  |_|    \__, ||_| |_| \__||_|/___|
                                 |___/
"

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

#Pedir introducir las veces que se abrirá la página
echo -e "$rojoC$logo$blanco"
echo -e "$verdeC Selecciona el número de veces que se visitará la página$blanco"
echo -e "              $amarillo (Tiene que ser un número)$blanco"
read repeticiones
clear

#Pedir la dirección de la página a visitar
echo -e "$rojoC$logo$blanco"
echo -e "$verdeC Escribe la página web o la dirección IP$blanco"
echo -e "    $amarillo (por ejemplo: www.laguialinux.es)$blanco"
read sitioweb
clear

#Pedir las páginas que se abrirán a la vez
echo -e "$rojoC$logo$blanco"
echo -e "$verdeC Cuantas páginas quieres abrir a la vez$blanco"
echo -e "   $amarillo (recomiendo 10 si no lo sabes)$blanco"
read maxPaginasSimultaneas
clear

#Seleccionar navegador
echo -e "$rojoC$logo$blanco"
echo ""
echo -e "          $verdeC Selecciona un navegador$blanco"
echo ""
echo -e "                 $rojoC 1$azulC - Chrome$blanco"
echo -e "                 $rojoC 2$azulC - Chromium$blanco"
echo -e "                 $rojoC 3$azulC - Firefox$blanco"
echo -e "                 $rojoC 4$azulC - Opera$blanco"
echo -e "                 $rojoC 5$azulC - Iceweasel$blanco"
echo -e "                 $rojoC 6$azulC - Epiphany$blanco"
echo ""
echo -e "       $verdeC Selecciona un navegador para realizar las pruebas$blanco"
echo -e "              $amarillo (Por supuesto tiene que estar$rojoC instalado$amarillo)$blanco"
echo ""
echo -e "$verdeC A continuación escribe el número de la opción elegida:$blanco"
read navegadorelegido
	case $navegadorelegido in
		1)
			navegador="chrome";;
		2)#Condicional if: -d para comprobar si existe dir y -f para archivos -x permisos de ejecución
			if [ -f /usr/bin/chromium ]; then
				navegador="chromium"
			elif [ -f /usr/bin/chromium-browser ]; then
				navegador="chromium-browser"
			else
				echo -e "$rojoC Se sale porque no está instalado el navegador elegido$blanco"
				exit 1
			fi;;
		3)
			navegador="firefox";;
		4)
			navegador="opera";;
		5)
			navegador="iceweasel";;
		6)
			navegador="epiphany";;
		*)
			echo ""
			echo -e "$rojoC          No existe esa opción$blanco"
			echo ""
			exit 1;;
	esac
clear

#Resumen de lo que se realizará
echo -e "$rojoC$logo$blanco"
echo ""
echo -e "$verdeC   Se realizarán $rojoC$repeticiones$verdeC conexiones a la página web $rojoC$sitioweb$blanco"
echo -e "$verdeC   Pero a la vez solo se abriran $rojoC$maxPaginasSimultaneas$blanco"
echo -e "$verdeC   Para ello se utilizará el navegador $rojoC$navegador$blanco"
echo ""
echo ""
echo -e "$amarillo Pulsa$rojoC Intro$amarillo si todo está correcto o$rojoC Control+C$amarillo para salir$blanco"
read foo
clear

#Ejecución
echo -e "$rojoC$logo$blanco"
echo -e "$rojoC            Realizando operaciones$blanco"
while [ $contador -lt $( expr $repeticiones / $maxPaginasSimultaneas ) ]; do
	echo -e "$verdeC El contador actual es $contador"
	echo ""
		ContadorSimultaneo="0"
		while [ $ContadorSimultaneo -lt $maxPaginasSimultaneas ]; do
			$navegador $sitioweb&
			ContadorSimultaneo=$( expr $ContadorSimultaneo + 1 )
		done
	sleep 8
	contador=$( expr $contador + 1 )
	killall $navegador
	sleep 1
	clear
	echo -e "$rojoC$logo$blanco"
done

#Finalizando
clear
echo -e "$rojoC$logo$blanco"
echo ""
echo -e "$rojoC Se ha terminado el script$blanco"
echo -e "$rojoC Puedes volver a ejecutarlo si asi lo deseas$blanco"
echo ""
echo -e "$amarillo      Hasta la próxima$blanco"
echo ""
echo ""

exit 1
