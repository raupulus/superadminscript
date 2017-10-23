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
        echo -e "             $amarillo BACKUPS $rojo   $version"
        echo ""
        echo -e "   $rojo 1)  $verde Generar todas las copias de Seguridad"
        echo -e "   $rojo 2)  $verde Crear Backup del directorio \"home\""
        echo -e "   $rojo 3)  $verde Crear Backup de raíz del sistema \"/\" excluyendo home"
        echo -e "   $rojo 4)  $verde Crear Backup solo del usuario actual"
        echo -e "   $rojo 5)  $verde Crear Backup de directorios especiales"
        echo -e "   $rojo 0)  $verde Volver atrás$gris"
        echo ""

    read -p "  → " OPCION
    case $OPCION in

        1)  # Generar todas las copias de Seguridad
            clear
            . $DirInstalacion/2_Backups/BackupSystem.sh
            . $DirInstalacion/2_Backups/BackupHome.sh
            . $DirInstalacion/2_Backups/otrosDirectorios.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        2)  # Crear Backup del directorio "home"
            clear
            . $DirInstalacion/2_Backups/BackupHome.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        3)  # Crear Backup de la raíz del sistema "/" excluyendo directorio de usuarios
            clear
            . $DirInstalacion/2_Backups/BackupSystem.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        4)  # Crear Backup del usuario actual
            clear
            . $DirInstalacion/2_Backups/HomeUsuarioActual.sh
            read -p "Pulsa una tecla para continuar" foo
            continue;;

        5)  # Crear Backup de directorios especiales
            clear
            . $DirInstalacion/2_Backups/otrosDirectorios.sh
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
