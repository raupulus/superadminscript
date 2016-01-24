 
Handshaker by Coeman76
 
 
 
 
Este script,basado en GoyscriptWPA de Goyfilms,se ha simplificado un poco y ha llamado a sus amiguetes para entre todos sacar el handshake que os trae de cabeza a la mayoría.
No prometo que sea un arma revolucionaria,pero diferentes metodos para obtener el handshake los teneis fijo.

PUESTA EN MARCHA

explico su puesta en marcha y funcionamiento....

1 Descargais el handshaker

2 Este archivo vendra comprimido en un zip.,lo descomprimis donde os de la gana

3 Ahora con el comando cd os situais en la carpeta HandshakerV1.0 o bien situais el raton encima de la carpeta 
  descomprimida y (si teneis la opcion) boton secundario y click en "Abrir Terminal Aqui"

4 Si no sois root debereis de logearos como root

5 En la terminal que se ha abierto escribis bash handshaker.sh


FUNCIONAMIENTO

Al iniciar el script,este nos detectara las interfaces wifi y nos la mostrara en pantalla dandonos a elegir.

Acto seguido nos montara la tarjeta en modo monitor,y se pondra a buscar redes WPA

Paramos el escaneo y nos mostrara las redes,elegimos una y elegimos el ataque.
Hay 5 tipos de ataque....Aireplay,Mdk3,Airbase(honeypot),Airbase + Aireplay y Airbase + mdk3....

CHANGELOG


HandshakerV1.0

-Version Inicial

HandshakerV1.1

- Corregido bug en seleccion de redes
- Ahora muestra el chip de la interfaz para diferenciar.
- Muestra la ruta absoluta del handshake una vez obtenido