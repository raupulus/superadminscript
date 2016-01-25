#!/bin/bash

ifconfig wlan0 down
ifconfig wlan1 down
ifconfig wlan2 down
ifconfig wlan3 down
ifconfig wlan4 down
ifconfig wlan5 down
ifconfig wlan6 down
ifconfig wlan7 down
ifconfig wlan8 down
ifconfig wlan9 down

macchanger -p wlan0
macchanger -p wlan1
macchanger -p wlan2
macchanger -p wlan3
macchanger -p wlan4
macchanger -p wlan5
macchanger -p wlan6
macchanger -p wlan7
macchanger -p wlan8
macchanger -p wlan9

service networking stop
service network-manager stop
sleep 1s
service networking start
service network-manager start
sleep 1s
service networking restart
service network-manager restart
sleep 1s

ifconfig wlan0 up
ifconfig wlan1 up
ifconfig wlan2 up
ifconfig wlan3 up
ifconfig wlan4 up
ifconfig wlan5 up
ifconfig wlan6 up
ifconfig wlan7 up
ifconfig wlan8 up
ifconfig wlan9 up

ifconfig

echo Comprueba que están en modo managed las interfaces
