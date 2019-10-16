#! /bin/bash

kdialog --title "Instalación de Chromium" --yesno "Chromium es el proyecto de código abierto de navegador web del que Google Chrome obtiene su código fuente.
¿Desea instalar Chromium Browser?"

if [ $? = 0 ]; then 
	konsole -e apt-get install chromium-browser 
else 
	echo " Instalación de Chromium omitida"
fi
