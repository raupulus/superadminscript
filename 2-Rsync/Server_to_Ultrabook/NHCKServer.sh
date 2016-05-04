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
comando="rsync -av --delete --progress"

#Usuarios y Rutas
usuarioRemoto="$USERNAME"
usuarioLocal="$USERNAME"
dir="$usuarioRemoto@${arrayDir[$actual]}"

#DeBUG
echo "Longitud de array $total"
echo "Comando con array 0"
echo $dir

while [ $actual -lt $total ]; do
	echo "$actual"
	echo "$comando $dir"
	$comando $dir
	let actual=actual+1
	echo "terminado"
done
exit 0
