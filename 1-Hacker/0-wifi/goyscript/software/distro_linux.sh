#!/bin/bash

DISTRO=$(uname -n)

case "$DISTRO" in
wifislax)
	DISTRO="Wifislax";;
wifiway)
	DISTRO="Wifiway";;
this)
	DISTRO="Ubuntu";;
bt)
	DISTRO="Backtrack"
	ln -s /lib/libssl.so.0.9.8 /lib/libssl.so.1 > /dev/null 2>&1
	ln -s /lib/libcrypto.so.0.9.8 /lib/libcrypto.so.1 > /dev/null 2>&1
	ln -s /usr/lib/libpcap.so.1.0.0 /usr/lib/libpcap.so.1 > /dev/null 2>&1;;
kali)
	DISTRO="Kali Linux"
	ln -s /usr/lib/i386-linux-gnu/libpcap.so.0.8 /lib/libpcap.so.1 > /dev/null 2>&1
	ln -s /usr/lib/i386-linux-gnu/i686/cmov/libssl.so.1.0.0 /usr/lib/i386-linux-gnu/i686/cmov/libssl.so.1 > /dev/null 2>&1
	ln -s /usr/lib/i386-linux-gnu/i686/cmov/libcrypto.so.1.0.0 /usr/lib/i386-linux-gnu/i686/cmov/libcrypto.so.1 > /dev/null 2>&1;;
linux.site)
	DISTRO="openSUSE";;
archiso)
	DISTRO="Archlinux";;

Microknoppix)
	DISTRO="KNOPPIX";;
*)
	DISTRO="<Desconocida>"#Optimizada para debian 8.1 by fryntiz
	ln -s /usr/lib/x86_64-linux-gnu/libpcap.so.1.6.2 /usr/lib/x86_64-linux-gnu/libpcap.so.1 > /dev/null 2>&1
	ln -s /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0  /usr/lib/x86_64-linux-gnu/libssl.so.1 > /dev/null 2>&1
	ln -s /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /usr/lib/x86_64-linux-gnu/libcrypto.so.1 > /dev/null 2>&1;;
esac
echo "$DISTRO"
