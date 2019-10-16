#! /bin/bash

kdialog --title "Actualización del sistema" --yesno "Intentaré \
actualizar su sistema, si está seguro que su sistema está actualizado, \
puede omitir este paso.\n ¿Desea actualizar sus sistema?"

if [ $? = 0 ]; then 
	konsole -e $SHELL -c "apt-get update ; 
	apt-get upgrade -y ; 
	apt-get dist-upgrade -y"
else 
	echo " Actualización omitida"
fi
