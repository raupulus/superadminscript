#!/bin/bash

ifconfig wlan2 down

macchanger -p wlan2

ifconfig wlan2 up

ifconfig

echo Comprueba que está en modo managed la interfaz
