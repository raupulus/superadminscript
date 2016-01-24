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
ifconfig wlan10 down

service networking stop
service network-manager stop

iw reg set BO
iw reg set US

iwconfig wlan0 txpower 30
iwconfig wlan1 txpower 30
iwconfig wlan2 txpower 30
iwconfig wlan3 txpower 30
iwconfig wlan4 txpower 30
iwconfig wlan5 txpower 30
iwconfig wlan6 txpower 30
iwconfig wlan7 txpower 30
iwconfig wlan8 txpower 30
iwconfig wlan9 txpower 30
iwconfig wlan10 txpower 30

service networking start
service network-manager start

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
ifconfig wlan10 down

iw reg get
sleep 1s
echo "Comprueba que marca 'US' y que está en 30dbm, en caso contrario aqui falla algo colega"
sleep 5s

iwconfig
echo "comprueba que se ha cambiado"



