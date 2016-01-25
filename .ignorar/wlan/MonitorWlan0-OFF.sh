#!/bin/bash

ifconfig wlan0 down

macchanger -p wlan0

ifconfig wlan0 up

ifconfig

echo Comprueba que está en modo managed la interfaz
