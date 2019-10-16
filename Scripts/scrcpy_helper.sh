#! /bin/bash

kdialog --title "Instalación de Scrcpy_Helper" --yesno "Con este paquete ofrezco una interfaz gráfica que ayuda en las configuraciones básicas de ScrCpy.
¿Desea instalar Scrcpy_Helper?"

if [ $? = 0 ]; then 
	konsole -e cp -avr Scrcpy_Helper /usr/share/applications
	konsole -e cp Scrcpy_Helper/ScrCpyH.desktop "$(xdg-user-dir DESKTOP)"
else 
	echo " Instalación de Scrcpy_Helper omitida"
fi 
