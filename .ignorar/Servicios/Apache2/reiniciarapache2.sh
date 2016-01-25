#!/bin/bash

#Script para reiniciar servidor apache

clear
service apache2 restart

echo
echo
echo "              Servicio APACHE2 reiniciado"
echo
echo "               Comprobando estado actual:"
service apache2 status
