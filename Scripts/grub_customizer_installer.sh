#! /bin/bash

kdialog --title "Instalación de Grub Customizer" --yesno "GrubCustomizer es una interfaz gráfica para configurar las opciones de GRUB2/BURG y las entradas de menú.
Es ideal si tienes varios sistemas operativos.
¿Desea instalar GrubCustomizer?"

if [ $? = 0 ]; then 
	konsole -e $SHELL -c "add-apt-repository ppa:danielrichter2007/grub-customizer -y ; 
	apt-get install grub-customizer -y"
else 
	echo " Instalación de GrubCustomizer omitida"
fi
