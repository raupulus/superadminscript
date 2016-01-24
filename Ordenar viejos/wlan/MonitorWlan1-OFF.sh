#!/bin/bash

ifconfig wlan1 down

macchanger -p wlan1

ifconfig wlan1 up

ifconfig

echo Comprueba que está en modo managed la interfaz
