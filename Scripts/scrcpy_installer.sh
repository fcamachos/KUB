#! /bin/bash

kdialog --title "Instalación de Scrcpy" --yesno "Con este paquete puedes controlar tu Android siempre que tengas activa la depuración USB. 
Se instalarán los paquetes Scrcpy, ADB, USBaudio y un script personalizado para su ejecución gráfica.
¿Desea instalar Scrcpy, ADB, USBaudio y ScrcpyHelper?"

if [ $? = 0 ]; then 
	konsole -e apt-get install android-tools-adb
	konsole -e snap install scrcpy
	konsole -e $SHELL -c "apt install gcc git meson vlc libpulse-dev libusb-1.0-0-dev ;
	git clone https://github.com/rom1v/usbaudio ;
	cd usbaudio ;
	meson x --buildtype=release ;
	cd x ;
	ninja ;
	ninja install ;
	cd .. ; cd .. ; chmod -R 777 usbaudio/"
	
else 
	echo " Instalación de Scrcpy omitida"
fi 

 
