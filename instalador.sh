#!/bin/bash

#Variables Generales

#Variables de colores
MagentaNegrita='\033[35;1m';
AzulNegrita='\033[34;1m';
AmarilloNegrita='\033[33;1m';
Verde='\033[32;22m';
VerdeNegrita='\033[32;1m';
Rojo='\033[31;22m';
RojoNegrita='\033[31;1m';

FinColor='\033[0;0m';

#Script para Instalar en el Sistema Operativo
#Comprobado funcionamiento solo en Debian rama Estable
#Único idioma disponible de momento ESPAÑOL de ESPAÑA

clear;
echo "$AmarilloNegrita Aún no se ha definido el punto de instalación $FinColor"
echo "Planeado tomar ~home/ para instalar dentro del perfil usuario"
echo "Otra posibilidad es instalar dentro de /usr o dentro de /root"
