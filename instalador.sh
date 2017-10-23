#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

############################
##   Constantes Colores   ##
############################
amarillo="\033[1;33m"
azul="\033[1;34m"
blanco="\033[1;37m"
cyan="\033[1;36m"
gris="\033[0;37m"
magenta="\033[1;35m"
rojo="\033[1;31m"
verde="\033[1;32m"

#############################
##   Variables Generales   ##
#############################

clear;

#Configurar BASH ya que es un requisito para que se visualice y funcione correctamente
echo -e "$rojo Reconfigurando bash (En el caso de que utilices Dash) $gris"
echo -e "Pulsa$subrayar$verde 'Y' $gris para continuar"

if [ $SHELL == "/bin/bash" ]
    then
        echo -e "El SHELL es /bin/bash"
    else
        echo -e "No se encuentra instalado BASH, procediendo a su actualización"
        sudo apt update
        sudo apt install bash
        sudo rm /bin/sh
        sudo ln -s /bin/bash /bin/sh
        sudo usermod -s /bin/bash $UsuarioActual
fi

#Mostrar el usuario que soy y la ruta donde se instalará el menú
echo -e "Instalando script con el usuario: $verde$subrayar$UsuarioActual$gris"
echo -e "El Menú se instalará en el directorio: $verde$subrayar$DirInstalacion$gris"
echo -e "Pulsa control+C para abortar la instalación antes de $rojo 5 segundos$gris"
sleep 1
echo -e "$rojo 4$gris ... Segundos para instalar"
sleep 1
echo -e "$rojo 3$gris ... Segundos para instalar"
sleep 1
echo -e "$rojo 2$gris ... Segundos para instalar"
sleep 1
echo -e "$rojo 1$gris ... Segundo para instalar"
sleep 1
read -p "Pulsa una tecla para continuar" foo

# Clonar en el destino de instalación si no existe
if [ -d $DirInstalacion ]
    then
        echo -e "Existe ya una instalación"
        sleep 3
    else
        echo -e "El destino de la instalación no existe, se procede a crearlo"
        sleep 1
        mkdir -p $DirInstalacion
        echo -e "$DirInstalacion ha sido creado"
        git clone https://github.com/fryntiz/SuperScriptBash.git $DirInstalacion
fi

#Crear lanzador como /bin/menu
echo -e "Creando lanzador mediante el comando 'menu' se necesitará ser root"
sudo touch /bin/menu
sudo echo "" > /bin/menu
sudo echo "#!/bin/bash" >> /bin/menu
echo "bash ~/$DirInstalacion/menu.sh" >> /bin/menu
sudo chmod 755 "/bin/menu"
sleep 1
echo -e "Ahora puedes acceder al Programa accediendo con el usuario que lo hayas instalado (puedes instalarlo con varios usuarios) a un terminal y escribiendo simplemente la palabra 'menu'"

#Comprobar si existen actualizaciones y descargarlas

#Iniciar el programa
~/$DirInstalacion/main.sh
