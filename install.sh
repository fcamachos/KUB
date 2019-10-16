#!/bin/bash
kdialog --title "Procede con precaución" --textbox README.txt 512 512 

if [ $? = 0 ]; then
	PASSWD=$(kdialog --password "Ingresa tu contraseña de SuperUsuario")
	if [ $? = 0 ]; then
		echo $PASSWD | sudo -S sh Scripts/update_sys.sh
		echo $PASSWD | sudo -S sh Scripts/fix_time_windows.sh
		echo $PASSWD | sudo -S sh Scripts/chromium_installer.sh
		echo $PASSWD | sudo -S sh Scripts/grub_customizer_installer.sh
		echo $PASSWD | sudo -S sh Scripts/scrcpy_installer.sh
		echo $PASSWD | sudo -S sh Scripts/scrcpy_helper.sh
	else
		echo " Ejecucion cancelada"
	fi	
else
    echo " Ejecucion cancelada"
fi

kdialog --title "Correcto" --msgbox "Todos los procesos terminados"
