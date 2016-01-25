#!/bin/bash

#Script para detener la red

clear
service networking stop

echo
echo
echo "               La red ha sido detenida"
echo
echo "               Comprobando estado actual:"
service networking status
