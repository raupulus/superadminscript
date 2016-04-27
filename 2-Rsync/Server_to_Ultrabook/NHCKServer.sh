#!/bin/bash
actual="1"

#Directorios en Remoto
dirRemoto1="directorio remoto 1";
dir2="";
dir3="";
dir4="";

#Directorios en local
dirLocal1="directorio local 1";


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


while [ $actual -lt 10 ]; do
	echo "$actual";
	let actual=actual+1
done

#"rsync -av --delete --progress root@172.18.1.1:/media/nerviozzo/DATOS_2TB/3\\\ -\\\ Librerías\\\ WEB/ /home/fryntiz/1-MOUNT/DATOS/3\ -\ Mis\ Páginas\ webs/"


