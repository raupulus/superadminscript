#!/bin/bash

echo Configurando WLAN1
ifconfig wlan1 down

iwconfig wlan1 mode monitor

macchanger -m 00:11:22:33:44:11 wlan1

ifconfig wlan1 up

echo Se ha puesto wlan1 en modo monitor con la mac 00:11:22:33:44:11
sleep 2s

ifconfig
echo Comprueba la red antes de continuar
