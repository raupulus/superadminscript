#!/bin/bash

#Script para encender la red

clear
service networking start

echo
echo
echo "               Se ha iniciado la red"
echo
echo "               Comprobando estado actual:"
service networking status
