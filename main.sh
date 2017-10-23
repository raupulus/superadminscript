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
MenuActual='Menú Principal de Administración - by Fryntiz'
Menu1='Actualizar Software'
Menu2='Backups o Copias de seguridad'
Menu3='Servicios'
Menu4='Pentesting y Hacking ético'
Menu5='Firewall'
Menu6='Monitorización'
Menu7='Sincronizar directorios mediante RSYNC'
Menu8='Limpiar Sistema Operativo'
Configurar="Configurar Opciones para el funcionamiento del Menú"
Salir='Salir de este Menú'

UsuarioActual=$(whoami)
#DirInstalacion="~/.SuperBashScript"
DirInstalacion="/home/$UsuarioActual/1_GIT/3-Fryntiz/SuperScriptBash"
DirPreferencias="$DirInstalacion/PREFERENCIAS" #Cuando se termine de depurar apuntará a "preferencias"
version="$(cat $DirInstalacion/version.csv)"

# Menu
while :
    do
        clear

        echo ""
        echo -e "             $amarillo $MenuActual $rojo   $version"
        echo ""
        echo -e "   $rojo 1)  $verde $Menu1"
        echo -e "   $rojo 2)  $verde $Menu2"
        echo -e "   $rojo 3)  $verde $Menu3"
        echo -e "   $rojo 4)  $verde $Menu4"
        echo -e "   $rojo 5)  $verde $Menu5"
        echo -e "   $rojo 6)  $verde $Menu6"
        echo -e "   $rojo 7)  $verde $Menu7"
        echo -e "   $rojo 8)  $verde $Menu8"
        echo -e "   $rojo 9)  $verde $Configurar"
        echo -e "   $rojo 0)  $verde $Salir"
        echo ""

    read -p "  → " OPCION
    case $OPCION in

        1)  # Actualizar Software
            clear
            . $DirInstalacion/1_Actualizar_Software/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        2)  # Generar Todos los BACKUPS
            clear
            . $DirInstalacion/2_Backups/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        3)  # Servicios
            clear
            . $DirInstalacion/3_Servicios/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        4)  # Pentesting y Hacking ético
            clear
            . $DirInstalacion/4_Pentesting/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        5)  # Firewall
            clear
            . $DirInstalacion/5_Firewall/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        6)  # Monitorización
            clear
            . $DirInstalacion/6_Monitorización/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        7)  # Sincronizar directorios mediante RSYNC
            clear
            . $DirInstalacion/7-Rsync/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        8)  # Limpiar Sistema Operativo
            clear
            . $DirInstalacion/8_Limpiar_Sistema/main.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        9)  # Configurar Opciones
            clear
            echo -e "$verde Configurando opciones$amarillo (No implementado aún)"
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        0)  # Salir de este Menú
            clear
            echo -e "$grisC Saliendo del script"
            exit 0
            break;;

        *)#Cualquier otra opción que no sea las anteriores
            clear
            echo ""
            echo -e "$rojo La opción elegida no es válida$amarillo introduce otra"
            read -p "Pulsa una tecla para continuar" foo;;
    esac
done
