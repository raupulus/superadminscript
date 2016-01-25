#!/bin/bash

#Script para Iniciar servidor apache

clear
service apache2 start

echo
echo
echo "               Servicio APACHE2 Iniciado"
echo
echo "               Comprobando estado actual:"
service apache2 status
