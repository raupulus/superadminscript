#!/bin/bash

#Variables
repeticiones=""
navegador=""
maxPaginasSimultaneas=""
sitioweb=""
contador="0"

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
echo -e "$verdeC Selecciona el número de veces que se visitará la página$amarillo (Tiene que ser un número)$blanco"
read repeticiones
clear
echo -e "$verdeC Escribe la página web o la dirección IP$amarillo (por ejemplo: www.laguialinux.es)$blanco"
read sitioweb
clear
echo -e "$verdeC Cuantas páginas quieres abrir a la vez$amarillo (recomiendo 10 si no lo sabes)$blanco"
read maxPaginasSimultaneas
clear
echo -e "$verdeC Selecciona un navegador para realizar las pruebas$amarillo (Por supuesto tiene que estar instalado)$blanco"
echo -e "1 - Chrome"
echo -e "2 - Chromium"
echo -e "3 - Firefox"
echo -e "4 - Opera"
echo -e "5 - Iceweasel"
echo -e "6 - Epiphany"
read navegadorelegido
	case $navegadorelegido in
		1)
			navegador="chrome";;
		2)
			navegador="chromium";;
		3)
			navegador="firefox";;
		4)
			navegador="opera";;
		5)
			navegador="iceweasel";;
		6)
			navegador="epiphany";;
		*)
			echo -e"$rojoC No existe esa opción$blanco"
			exit 1;;
	esac
clear

echo -e "$verdeC Se realizarán $rojoC$repeticiones$verdeC conexiones a la página web $rojoC$sitioweb$blanco"
echo -e "$verdeC Pero a la vez solo se abriran $rojoC$maxPaginasSimultaneas$blanco"
echo -e "$verdeC Para ello se utilizará el navegador $rojoC$navegador$blanco"
echo ""
echo -e "$amarillo Pulsa cualquier tecla si todo está correcto o$rojoC Control+C$amarillo para salir$blanco"
read foo
clear

echo -e "$rojoC Realizando operaciones$blanco"
while [ $contador -lt $( expr $repeticiones / $maxPaginasSimultaneas ) ]; do
	echo "El contador es $contador"
	echo ""
		ContadorSimultaneo="0"
		while [ $ContadorSimultaneo -lt $maxPaginasSimultaneas ]; do
			$navegador $sitioweb&
			let ContadorSimultaneo=ContadorSimultaneo+1
		done
	sleep 8
	#contador=$( expr $contador + 1 )
	let contador=contador+1
	killall $navegador
	sleep 1
	clear
done
