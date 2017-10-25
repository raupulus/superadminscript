#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

exclusiones='--exclude .SynologyWorkingDirectory'
opciones='-avzt --delete --progress'
listado=`cat $DirPreferencias/rsyncDirectorios.pref | tail -n+2`

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
        echo "Este menú solo muestra el comando"
        echo "Es necesario hacer varias pruebas antes de quitar el echo"
        echo -e "   $rojo 1)  $verde Sincronizar todo"
        echo -e "   $rojo 0)  $verde Volver atrás$gris"
        echo ""

    read -p "  → " OPCION
    case $OPCION in

        1)  # Sincronizar todo
            clear
            for linea in $listado
            do
                echo "rsync $opciones $exclusiones $linea"
            done
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
