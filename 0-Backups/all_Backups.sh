#!/bin/bash

#Crear todas las copias de Backups
echo "Comenzando Copia Home";
sleep 2;
#Backup para directorio Home
sh BackupHome.sh;

#Backup para todo el Sistema
echo "Comenzando Copia Sistema";
sleep 2;
sh BackupSystem.sh;

#Mensaje de finalización
echo "Trabajo terminado";
sleep 2;
