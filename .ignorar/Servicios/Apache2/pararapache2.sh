#!/bin/bash

#Script para detener servidor apache

clear
service apache2 stop

echo
echo
echo "               Servicio APACHE2 Detenido"
echo
echo "               Comprobando estado actual:"
service apache2 status
