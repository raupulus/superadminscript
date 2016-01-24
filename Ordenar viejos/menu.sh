#!/bin/bash
#Menú para elegir que hacer
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
		echo "   1) Menú SSH"
		echo "   2) Configuración de Red"
		echo "   3) 3"
		echo "   4) 4"
		echo
		echo -n "            Escribe el número del script a ejecutar  (1 - 4)"
		echo
		echo
		
	read entrada
	case $entrada in
		1) echo "Menú SSH";
			sh ./ScriptSSH/menu.sh;;
		2) echo "Configuración de Red";
			./wlan/menu.sh;;
		3) echo "3";
			./verpuertos;;
		4) echo "Nos vemos, ya volverás....";
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
