#!/bin/bash

ifconfig wlan0 down

iwconfig wlan0 mode monitor

macchanger -m 00:11:22:33:44:10 wlan0

ifconfig wlan0 up

echo Se ha puesto wlan0 en modo monitor con la mac 00:11:22:33:44:10
sleep 2s

ifconfig
echo Comprueba la red antes de continuar
