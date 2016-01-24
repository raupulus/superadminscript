#!/bin/bash
#Sincronizar carpeta proyectos de vídeos

#rsync -av --delete root@192.168.0.254:/home/nerviozzo/Documentos /media/DATOS_/PRUEBA_RSYNC/


#rsync -av --delete --progress -e 'ssh -p 22222' root@172.18.8.120:/home/alumno/Descargas /home/nerviozzo/Descargas/rsync

rsync -av --delete --progress root@192.168.0.254:/home/nerviozzo/Proyectos\\\ de\\\ Vídeos/ /media/DATOS/Home\ -\ Proyectos\ de\ Vídeos/
