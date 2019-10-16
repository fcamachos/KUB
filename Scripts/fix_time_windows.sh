#! /bin/bash

kdialog --title "Corrección del rejor" --yesno "Es común que al cambiar de Linux a Windows notemos que el reloj se desconfigura. 
Este script corregirá eso por ti.
¿Deseas corregir el reloj?"

if [ $? = 0 ]; then 
	konsole -e $SHELL -c "timedatectl set-local-rtc 1"
else 
	echo " Actualización omitida"
fi
