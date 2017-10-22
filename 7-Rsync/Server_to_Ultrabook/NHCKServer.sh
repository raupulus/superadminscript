#!/bin/bash
#Obtener configuración con las rutas para pasarla al Array
	#Número de lineas
		cantidadConfiguracion="wc -l ../../PREFERENCIAS/rsyncDirectorios.pref"
	#Array con directorios Remotos
		arrayDir=$(cat ../../PREFERENCIAS/rsyncDirectorios.pref | awk -v FS=";" 'NR > 1 { print $1, $2 }')

#Inicio y fin del bucle según el tamaño del array1
actual="0"
total=${#arrayDir[@]}

#Comando Rsync con opciones
comando="rsync -e ssh -avlz --stats --delete --progress --exclude .*"

#Usuarios y Rutas
usuarioRemoto="$USERNAME"
usuarioLocal="$USERNAME"

#DeBUG
echo "Longitud de array $total"
echo "Comando con array 0"
echo $dir

while [ $actual -lt $total ]; do
	echo "$actual"
	#echo "$comando $usuarioRemoto@${arrayDir[$actual]}"
	"$comando $usuarioRemoto@${arrayDir[$actual]}"
	let actual=actual+1
	echo "terminado"
done
exit 0
###Este script tiene un error a la hora de pasar las preferencias al array ya que lo mete todo en la misma linea y la longitud del array es 1 siempre. El resto parece estar bien
