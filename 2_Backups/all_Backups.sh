#!/bin/bash

#Variables Generales
UsuarioActual=$(whoami)
DirInstalacion="Documentos/0-Scripts_2"
LugarDeInstalacion="/home/$UsuarioActual/$DirInstalacion"
DirPreferencias="$LugarDeInstalacion/PREFERENCIAS/backups.pref"
Preferencias="$(cat $DirPreferencias)"

##### CONSTANTES COLORES #####
grisC="\033[0;37m"
rojoC="\033[1;31m"
verdeC="\033[1;32m"
azulC="\033[1;34m"
magentaC="\033[1;35m"
cyanC="\033[1;36m"
blanco="\033[1;37m"
amarillo="\033[1;33m"

#Crear Backup para directorio HOME con todos los datos de usuarios
echo -e "$verdeC Comenzando Copia de Seguridad para$amarillo '/Home' $blanco"
sleep 2
#Backup para directorio Home
#sh ./BackupHome.sh

#Backup para todo el Sistema
echo -e "$verdeC Comenzando Copia de Seguridad para$amarillo 'Sistema'$blanco"
sleep 2
sh ./BackupSystem.sh

#Backup para UsuarioActual
echo -e "$verdeC Comenzando Copia de Seguridad para$amarillo 'UsuarioActual'$blanco"
sleep 2
sh ./HomeUsuarioActual.sh

#Backup para Archivos personales
echo -e "$verdeC Comenzando Copia de Seguridad para$amarillo 'Archivos personales'$blanco"
sleep 2
sh ./Archivos_Personales.sh

#Backup para Mis Apuntes
echo -e "$verdeC Comenzando Copia de Seguridad para$amarillo 'Mis Apuntes'$blanco"
sleep 2
sh ./Mis_Apuntes.sh

#Mensaje de finalización
echo ""
echo -e "$verdeC Trabajo terminado$blanco"
