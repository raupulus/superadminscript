#!/bin/bash
funcion1() {
	cat ../../PREFERENCIAS/rsyncDirectorios.pref | awk -v FS=";" 'NR == 3 { print $1 }'

}
#Obtener configuración con las rutas para pasarla al Array
	#Número de lineas
		cantidadConfiguracion="wc -l ../../PREFERENCIAS/rsyncDirectorios.pref"
	#Array con directorios Remotos
		arrayDir=$(cat ../../PREFERENCIAS/rsyncDirectorios.pref | awk -v FS=";" 'NR > 1 { print $1, $2 }')
#ATENCIÓN --> Me falta sacar de cantidadConfiguracion solo el primer valor con los 2 primeros caracteres y pasarlo por un condicional que compruebe al ser menor de 10 lo deje solo en un caracter. Luego Extraer cada linea del archivo de configuracion y separar cada linea por ";" donde primero será el directorio remoto y el segundo el directorio local

#Comando que muestra lineas de configuracion (Cambiar campos con $1 $2 $3)
#cat ../../PREFERENCIAS/rsyncDirectorios.pref | awk -v FS=";" 'NR > 1 { print $1, $2 }'


#Inicio y fin del bucle según el tamaño del array1
actual="0"
total=${#arrayDirRemotos[@]}

#Comando Rsync con opciones
comando="rsync -av --delete --progress"

#Usuarios y Rutas
usuarioRemoto="$USERNAME"
usuarioLocal="$USERNAME"
dir="$usuarioRemoto@${arrayDirRemotos[$actual]}"

#PRUEBAS
echo "Longitud de array $total"
echo "Comando con array 0"
echo "$comando $usuarioRemoto@${arrayDir[0]}"

while [ $actual -lt $total ]; do
	echo "$actual"
	echo "$comando $dir"
	#$comando "$rutaRemotaCompleta${array1[$actual]}" "$rutaLocal${array2[$actual]}"
	let actual=actual+1
done

echo "Longitud de array $total"
echo "Posición actual $actual"

exit 0
