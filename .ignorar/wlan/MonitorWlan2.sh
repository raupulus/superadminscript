#!/bin/bash

echo Configurando WLAN2
ifconfig wlan2 down

iwconfig wlan2 mode monitor

macchanger -m 00:11:22:33:44:12 wlan2

ifconfig wlan1 up

echo Se ha puesto wlan2 en modo monitor con la mac 00:11:22:33:44:12
sleep 2s

ifconfig
echo Comprueba la red antes de continuar
