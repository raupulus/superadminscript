#!/bin/bash

#Variables de Colores
MagentaNegrita='\033[35;1m'
FinMagentaNegrita='\033[0;0m'

AzulNegrita='\033[34;1m'
FinAzulNegrita='\033[0;0m'

AmarilloNegrita='\033[33;1m'
FinAmarilloNegrita='\033[0;0m'

Verde='\033[32;22m'
FinVerde='\033[0;0m'
VerdeNegrita='\033[32;1m'
FinVerdeNegrita='\033[0;0m'

Rojo='\033[31;22m'
FinRojo='\033[0;0m'
RojoNegrita='\033[31;1m'
FinRojoNegrita='\033[0;0m'

clear
while :
	do
		echo
		sleep 1
		echo "                        $AmarilloNegrita Menú de Gestión Repositorio GIT para DesdeChipiona by fryntiz $FinAmarilloNegrita
         "

		echo "   $RojoNegrita 0)$FinRojoNegrita $VerdeNegrita CLONAR Repositorio $FinVerdeNegrita"
		echo "   $RojoNegrita 1)$FinRojoNegrita $VerdeNegrita Descargar Actualizaciones y cambios $FinVerdeNegrita"
		echo "   $RojoNegrita 2)$FinRojoNegrita $VerdeNegrita Subir actualizaciones y Cambios $FinVerdeNegrita"
		echo "   $RojoNegrita 3)$FinRojoNegrita $VerdeNegrita 4 $FinVerdeNegrita"
		echo "   $RojoNegrita 4)$FinRojoNegrita $MagentaNegrita Salir de este Menú$FinMagentaNegrita"
		echo
		echo -n "            $AzulNegrita Escribe el número del script a ejecutar  (0 - 4)$FinAzulNegrita"
		echo
		echo

	read entrada
	case $entrada in

		0)#CLONAR Repositorio
			clear;
			echo "CLONAR Repositorio";
			sh clone.sh;
			clear;
			echo "Se ha completado la tarea de clonación";
			sleep 1;;

		1)#Descargar Actualizaciones y cambios
			clear;
			echo "Descargar Actualizaciones y cambios al Repositorio";
			sh pull.sh;
			clear;
			echo "Se ha terminado de descargar Cambios";
			sleep 1;;

		2)#Subir actualizaciones y Cambios
			clear;
			echo "Subir actualizaciones y Cambios";
			sh push.sh;
			clear;
			echo "Se ha terminado de subir Cambios"
			sleep 1;;

		3)#
			clear;
			echo "";
			sh ;
			clear;
			echo "";
			sleep 1;;

		4)#Salir de este Menú
			clear;
			echo "Nos vemos, ya volverás....";
			exit 1;;

		*)#Cualquier otra opción que no sea las anteriores
			clear;
			echo "";
			echo "                      $RojoNegrita ATENCIÓN: ERROR y de los chungos$FinRojoNegrita";
			echo "";
			echo "$RojoNegrita Pulsar$FinRojoNegrita $AmarilloNegrita $entrada $FinAmarilloNegrita $RojoNegrita no va a conseguir hacer nada porque no está en la lista pedazo de melón.;

¿Eso son dedos o es un catálogo de salsichas?, pulsa solo un número del$FinRojoNegrita$AmarilloNegrita 0$FinAmarilloNegrita$RojoNegrita al$FinRojoNegrita$AmarilloNegrita 4$FinAmarilloNegrita";
			echo "";
			echo "";
			echo "";
			echo "               $AzulNegrita Pulsa sobre cualquier tecla para volver al menú...$FinAzulNegrita";
	read foo;;
esac
done
