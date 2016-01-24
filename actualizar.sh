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

#Script para Actualizar
#Comprobado funcionamiento solo en Debian rama Estable
#Único idioma disponible de momento ESPAÑOL de ESPAÑA

clear;
echo "$AmarilloNegrita Aún no se puede Actualizar el Programa desde GIT $FinColor"
echo "Planeado crear Repositorio en GIT y autoactualizar mediante este script"
echo "Pensar donde mantendrá temporales: carpeta del programa, /tmp general, dir tmp de usuario o dir tmp de root"
