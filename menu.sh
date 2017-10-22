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
LongitudMenu='15'
MenuActual='Menú Principal de Administración - by Fryntiz'
Menu0='Backups o Copias de seguridad'
Menu1='Hacking Tool'
Menu2='Sincronizar directorios mediante RSYNC'
Menu3='Gestionar Servicios del Sistema'
Menu4='Gestión de Servidores'
Menu5='Limpiar Sistema Operativo'
Menu6='Gestión de Repositorios GIT'
Menu7='Gestión de INTRANET'
Menu8='Dominios y Hosting'
Menu9='Firewall Local'
Menu10='Gestión de Software Debian (DPKG y APT)'
Menu11='Personalización del Sistema Operativo y su software'
Menu12='Salud del Hardware y del Sistema'
Configurar="Configurar Opciones para el funcionamiento del Menú"
InstalarActualizar='Instalar o Actualizar este programa'
Salir='Salir de este Menú'

NoFunca="(No hace nada aún)"

UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts_2"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"
DirPreferencias="$LugarDeInstalacion/PREFERENCIAS"
version="$(cat $LugarDeInstalacion/version)"

clear

# Menu
while :
    do
        echo ""
        echo -e "             $amarillo $MenuActual $rojo   $version"
        echo ""
        echo -e "   $rojo 0)  $verde $Menu0"
        echo -e "   $rojo 1)  $verde $Menu1"
        echo -e "   $rojo 2)  $verde $Menu2"
        echo -e "   $rojo 3)  $verde $Menu3 $amarillo$NoFunca"
        echo -e "   $rojo 4)  $verde $Menu4 $amarillo$NoFunca"
        echo -e "   $rojo 5)  $verde $Menu5 $amarillo$NoFunca"
        echo -e "   $rojo 6)  $verde $Menu6 $amarillo$NoFunca"
        echo -e "   $rojo 7)  $verde $Menu7 $amarillo$NoFunca"
        echo -e "   $rojo 8)  $verde $Menu8 $amarillo$NoFunca"
        echo -e "   $rojo 9)  $verde $Menu9 $amarillo$NoFunca"
        echo -e "   $rojo 10) $verde $Menu10 $amarillo$NoFunca"
        echo -e "   $rojo 11) $verde $Menu11 $amarillo$NoFunca"
        echo -e "   $rojo 12) $verde $Menu12 $amarillo$NoFunca"

#Entrada para configurar opciones
        echo -e "   $rojo $(expr $LongitudMenu - 2)) $rojo $Configurar"

#Penúltimo menú para Instalar o Actualizar
        echo -e "   $rojo $(expr $LongitudMenu - 1)) $cyan $InstalarActualizar"

#Último Menú para salir:
        echo -e "   $rojo $LongitudMenu) $magentaC $Salir"
        echo ""

#Comentario impreso en pantalla donde muestra opciones disponibles a elegir
        echo -e "                   $azul Elige una opción  (0 - $LongitudMenu)"
        echo -e "$gris"

    read entrada
    case $entrada in

        0)#Generar Todos los BACKUPS
            clear
            echo "$Menu0"
            sleep 1
            cd 0-Backups
            sh menu.sh
            cd ..
            sleep 1;;

        1)#Hacking Tools
            clear
            echo "$Menu1"
            sleep 1
            cd 1-Hacker
            sh menu.sh
            cd ..
            sleep 1;;

        2)#Sincronizar todos los RSYNC
            clear
            echo "$Menu2"
            cd 2-Rsync
            sh sincronizar_todos.sh
            cd ..
            sleep 1;;

        3)#Servicios del sistema
            echo "$Menu3"
            cd 3-Servicios
            sh menu.sh
            cd ..
            sleep 1;;

        4)#Servidores
            echo "$Menu4"
            cd 4-Servidores
            sh menu.sh
            cd ..
            sleep 1;;

        5)#Limpiar Sistema
            echo "$Menu5"
            cd 5-LimpiarSistema
            sh menu.sh
            cd ..
            sleep 1;;

        6)#Gestión de Repositorios GIT
            echo "$Menu6"
            cd 5-LimpiarSistema
            sh menu.sh
            cd ..
            sleep 1;;

        7)#Intranet
            echo "$Menu7"
            cd 7-Intranet
            echo "YO AÚN NO HAGO NADA"
            sh menu.sh
            cd ..
            sleep 1;;

        8)#Hosting
            echo "$Menu8"
            cd 8-Hosting
            echo "YO AÚN NO HAGO NADA"
            sh menu.sh
            cd ..
            sleep 1;;

        9)#FirewallLocal
            echo "$Menu9"
            cd 9-FirewallLocal
            echo "YO AÚN NO HAGO NADA"
            sh menu.sh
            cd ..
            sleep 1;;

        10)#GestorSoftware
            echo "$Menu10"
            cd 10-GestorSoftware
            echo "YO AÚN NO HAGO NADA"
            sh menu.sh
            cd ..
            sleep 1;;

        11)#Personalización Sistema
            echo "$Menu11"
            cd 11-PersonalizacionSistema
            echo "YO AÚN NO HAGO NADA"
            sh menu.sh
            cd ..
            sleep 1;;

        12)#Salud Hardware
            echo "$Menu12"
            cd 12-SaludHardware
            echo "YO AÚN NO HAGO NADA"
            sh menu.sh
            cd ..
            sleep 1;;

        $(expr $LongitudMenu - 2))#Configurar todas las opciones
            echo "$Configurar"
            sh personalizar.sh
            echo "";;

        $(expr $LongitudMenu - 1))#Instalar o Actualizar
            echo "$InstalarActualizar"
            echo -e "$amarillo Esto llevará a un menú para elegir entre:$gris"
            echo -e "$rojo    Instalar$gris"
            echo -e "$rojo    Actualizar$gris"
            echo -e "$rojo    Eliminar instalación y reinstalar en limpio$gris"
            sleep 6
            echo "";;

        $LongitudMenu)#Salir de este Menú
            clear
            echo -e "$grisC"
            echo "Nos vemos, ya volverás...."
            echo ""
            exit 1;;

        *)#Cualquier otra opción que no sea las anteriores
            clear
            echo ""
            echo -e "                      $rojo ATENCIÓN: ERROR y de los chungos"
            echo ""
            echo -e "$rojo Pulsar $amarillo $entrada  $rojo no va a conseguir hacer nada porque no está en la lista pedazo de melón.

¿Eso son dedos o es un catálogo de salsichas?, pulsa solo un número del$amarillo 0$rojo al$amarillo $LongitudMenu"
            echo ""
            echo ""
            echo ""
            echo -e "               $azul Pulsa sobre cualquier tecla para volver al menú..."
            echo -e "$grisC"
    read foo;;
esac
done
