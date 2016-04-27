#!/bin/bash
actual="0";
total="5";

#Directorios en Remoto
dirRemoto1="directorio remoto 1";
dirRemoto2="directorio remoto 2";
dirRemoto3="directorio remoto 3";
dirRemoto4="directorio remoto 4";
dirRemoto5="directorio remoto 5";
array1=( "$dirRemoto1" "$dirRemoto2" "$dirRemoto3" "$dirRemoto4" "$dirRemoto5" );

#Directorios en local
dirLocal1="directorio local 1";
dirLocal2="directorio local 2";
dirLocal3="directorio local 3";
dirLocal4="directorio local 4";
dirLocal5="directorio local 5";
array2=( "$dirLocal1" "$dirLocal2" "$dirLocal3" "$dirLocal4" "$dirLocal5" );

#Comando Rsync con opciones
comando="rsync -av --delete --progress"

#Usuarios y Rutas
usuarioRemoto='fryntiz';
usuarioLocal="$USERNAME";
rutaLocal="/home/$usuarioLocal/1-MOUNT/DATOS/";
servidor='172.18.1.1';
rutaServidor="/home/$usuarioLocal/1-MOUNT/DATOS_2TB/";

#Rutas completas
rutaRemotaCompleta="$usuarioRemoto@$servidor$rutaServidor";
rutaLocalCompleta="$usuarioLocal/$rutaLocal";

#Comando completo con ruta Local y Remota
comandoCompleto="$comando $rutaRemotaCompleta $rutaLocalCompleta";

#Comprobando rutas y comando
echo "Ruta remota completa";
echo "$rutaRemotaCompleta";
echo "";
echo "Ruta local Completa";
echo "$rutaLocalCompleta";
echo "";
echo "Comando completo";
echo "$comandoCompleto";


while [ $actual -lt $total ]; do
	echo "$actual";
	echo "${array1[$actual]} ${array2[$actual]}";

	echo "$comando $rutaRemotaCompleta${array1[$actual]} $rutaLocalCompleta${array2[$actual]}";
	let actual=actual+1;
done

#"rsync -av --delete --progress root@172.18.1.1:/media/nerviozzo/DATOS_2TB/3\\\ -\\\ Librerías\\\ WEB/ /home/fryntiz/1-MOUNT/DATOS/3\ -\ Mis\ Páginas\ webs/"


