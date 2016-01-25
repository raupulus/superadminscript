#!/bin/bash

#Script para detener servidor apache

clear
service networking restart

echo
echo
echo "               Red reiniciada"
echo
echo "               Comprobando estado actual:"
service networking status
