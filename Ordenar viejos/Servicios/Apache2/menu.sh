#!/bin/bash
clear
while :
	do
		echo
		echo
		echo "                     (0 0) 			"
          echo "             ---oOO-- (_) ----oOO---   "
          echo "           ╔═════════════════════════╗ "
          echo "           ║ ELIGE UNA OPCIÓN!...    ║ "
          echo "           ╚═════════════════════════╝ "
          echo "              -------------------		"
          echo "                    |__|__| 			"
          echo "                     || || 			"
          echo "                    ooO Ooo 			"
		echo
		sleep 1
		echo "   1) Encender Apache2"
		echo "   2) Apagar Apache2"
		echo "   3) Reiniciar Apache2"
		echo "   4) Volver"
		echo
		echo -n "            Escribe el número del script a ejecutar  (1 - 4)"
		echo
		echo

		
	read entrada
	case $entrada in
		1) echo "Ejecutando script para encender ssh";
			./encenderapache2.sh;;
		2) echo "Ejecutando script para apagar ssh";
			./pararapache2.sh;;
		3) echo "Ejecutando script para escanear puertos en localhost";
			./reiniciarapache2.sh;;
		4) echo "Volviendo al menu";
	exit 1;;
		*) 	echo
			echo "                      ATENCIÓN: ERROR"
			echo
			echo "       $entrada No hace nada porque no está en la lista pedazo de melón. ¿Eso son dedos o es un catálogo de salsichas?, pulsa solo un número del 1 al 4";
			echo
			echo
			echo
			echo "                       Pulsa sobre cualquier tecla para volver al menú...";
	read foo;;
esac
done
