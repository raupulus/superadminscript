#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################


#############################
##   Variables Generales   ##
#############################

# Menu
while :
    do
        clear

        echo ""
        echo -e "             $amarillo RSYNC $rojo   $version"
        echo ""
        echo -e "   $rojo 1)  $verde op1"
        echo -e "   $rojo 0)  $verde Volver atrás$gris"
        echo ""

    read -p "  → " OPCION
    case $OPCION in

        1)  # Op1
            clear
            . $DirInstalacion/7-Rsync/????
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        0)  # Volver Atrás
            clear
            break;;

        *)  # Cualquier otra opción que no sea las anteriores
            clear
            echo ""
            echo -e "$rojo La opción elegida no es válida$amarillo introduce otra"
            read -p "Pulsa una tecla para continuar" foo;;
    esac
done
