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
		echo "   1) Encender ssh"
		echo "   2) Apagar ssh"
		echo "   3) Ver puertos abiertos en localhost"
		echo "   4) Cerrar"
		echo
		echo -n "            Escribe el número del script a ejecutar  (1 - 4)"
		echo
		echo
		echo "                            © Raúl Caro Pastorino ®	"
		echo "                          █║▌│█│║▌║││█║▌║▌║█│║▌║█│║▌║ 	"

	read entrada
	case $entrada in
		1) echo "Ejecutando script para encender ssh";
			./encenderssh;;
		2) echo "Ejecutando script para apagar ssh";
			./pararssh;;
		3) echo "Ejecutando script para escanear puertos en localhost";
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
