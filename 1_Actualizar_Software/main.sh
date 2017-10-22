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
        echo -e "             $amarillo $MenuActual $rojo   $version"
        echo ""
        echo -e "   $rojo 1)  $verde Aplicar todas las actualizaciones siguientes"
        echo -e "   $rojo 2)  $verde Actualizar Repositorios del Sistema"
        echo -e "   $rojo 3)  $verde Actualizar paquetes FlatPak"
        echo -e "   $rojo 4)  $verde Actualizar paquetes Snap"
        echo -e "   $rojo 0)  $verde Volver atrás$gris"
        echo ""

    read -p "  → " OPCION
    case $OPCION in

        1)  # Todas las actualizaciones
            clear
            . $DirInstalacion/1_Actualizar_Software/Actualizar_Repositorios.sh
            . $DirInstalacion/1_Actualizar_Software/Actualizar_FLATPAK.sh
            . $DirInstalacion/1_Actualizar_Software/Actualizar_SNAP.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        2)  # Actualizar Repositorios del Sistema
            clear
            . $DirInstalacion/1_Actualizar_Software/Actualizar_Repositorios.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        3)  # Actualizar paquetes FlatPak
            clear
            . $DirInstalacion/1_Actualizar_Software/Actualizar_FLATPAK.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        4)  # Actualizar paquetes Snap
            clear
            . $DirInstalacion/1_Actualizar_Software/Actualizar_SNAP.sh
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
