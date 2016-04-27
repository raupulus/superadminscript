#!/bin/bash

#Variables Generales
UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts_2"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"

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

#Script para Instalar en el Sistema Operativo
#Comprobado funcionamiento solo en Debian rama Estable
#Único idioma disponible de momento ESPAÑOL de ESPAÑA
#Necesario tener una consola funcionando con bash

clear;

#Configurar BASH ya que es un requisito para que se visualice y funcione correctamente
echo -e "$rojoC Reconfigurando bash (En el caso de que utilices Dash) $grisC"
echo -e "Pulsa$subrayar$verdeC 'Y' $grisC para continuar"
#Aquí introducir condicional (if echo $SHELL == /bin/bash) {exit o continue}else ------ rm /bin/sh | ln -s /bin/bash /bin/sh o así:
# sudo usermod -s /bin/bash $UsuarioActual
if [ $SHELL == "/bin/bash" ]
	then
		echo -e "El SHELL es /bin/bash"
	else
		echo -e "No se encuentra instalado BASH, procediendo a su actualización"
		sudo apt-get update
		sudo apt-get install bash
		sudo rm /bin/sh
		sudo ln -s /bin/bash /bin/sh
		sudo usermod -s /bin/bash $UsuarioActual
fi

#Mostrar el usuario que soy y la ruta donde se instalará el menú
echo -e "Instalando script con el usuario: $verdeC$subrayar$UsuarioActual$grisC"
echo -e "El Menú se instalará en el directorio: $verdeC$subrayar$LugarDeInstalacion$grisC"
echo -e "Pulsa control+C para abortar la instalación antes de $rojoC 5 segundos$grisC"
sleep 1
echo -e "$rojoC 4$grisC ... Segundos para instalar"
sleep 1
echo -e "$rojoC 3$grisC ... Segundos para instalar"
sleep 1
echo -e "$rojoC 2$grisC ... Segundos para instalar"
sleep 1
echo -e "$rojoC 1$grisC ... Segundo para instalar"
sleep 1

#Remover directorio de instalación si ya existe
echo -e "Limpiando instalación anterior si la hubiera"
if [ -d $LugarDeInstalacion ]
	then
		echo -e "Existe el lugar de instalación, procediendo a borrarlo"
		sleep 1
		sudo rm -R -f $LugarDeInstalacion
		mkdir $LugarDeInstalacion
		sudo echo -e "$LugarDeInstalacion ha sido limpiado"
		sleep 1
	else
		echo -e "El destino de la instalación no existe, se procede a crearlo"
		sleep 1
		mkdir $LugarDeInstalacion
		echo -e "$LugarDeInstalacion ha sido creado"
		whoami
		pwd
fi

#Copiar programa dentro del directorio creado
echo -e "Instalando programa"
cp -R ./* $LugarDeInstalacion/
echo -e "Programa instalado correctamente dentro de $LugarDeInstalacion/"

#Crear lanzador como /bin/menu
echo -e "Creando lanzador mediante el comando 'menu' se necesitará ser root"
sudo touch /bin/menu
sudo echo "" > /bin/menu
sudo echo "#!/bin/bash" >> /bin/menu
echo "sh ~/$DirInstalacion/menu.sh" >> /bin/menu
sudo chmod 777 "/bin/menu"
sleep 1
echo -e "Ahora puedes acceder al Programa accediendo con el usuario que lo hayas instalado (puedes instalarlo con varios usuarios) a un terminal y escribiendo simplemente la palabra 'menu'"


echo ""
echo ""
echo -e "$amarillo Aún no se ha declarado el punto de instalación definitivo y que este será temporal en un directorio dentro de Documentos del usuario que lo instala$grisC"
echo "Otra posibilidad es instalar dentro de /usr que por ahora sería manualmente"

#Inicializar git para actualizar
#git init
#git remote add origin https://github.com/fryntiz/ShellScript
#git add *
#git commit -a -m "auto dev server commit"
#git fetch origin master
#git merge -s recursive -X theirs origin/master
#git pull origin master

#Comprobar si existen actualizaciones y descargarlas

#Iniciar el programa
~/$DirInstalacion/menu.sh
