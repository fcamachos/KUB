# KUB

KUB 1.0 by Nechronomo.

Cree el siguiente script para automatizar las tareas de instalación y
actualización de algunas aplicaciones que siempre utilizo en Kubuntu.

Es importante que tengas en cuenta lo siguiente:
La ejecución de scripts puede ser perjudicial para tu sistema y tu seguridad si no estas seguro de lo que se está ejecutando.

Para ejecutar sólo da doble click en install.sh, o teclea en la terminal:
./install.sh

A continuación se muestra el rsumen de lo que realiza este script:

- Actualiza el sistema
- Corrección del reloj para sistemas DualBoot con Windows
- Instala Grub Customizer
- Instala Chromium
- Instala Scrcpy
- Instala USBaudio
- Instala ScrcpyHelper

https://github.com/Genymobile/scrcpy
https://github.com/rom1v/usbaudio
https://launchpad.net/~danielrichter2007/+archive/ubuntu/grub-customizer
https://www.chromium.org/Home

# Chromium

sudo apt-get install chromium-browser

# Grub Customizer

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get install grub-customizer

# Scrcpy

sudo snap install scrcpy

# USBaudio

sudo apt install gcc git meson vlc libpulse-dev libusb-1.0-0-dev
git clone https://github.com/rom1v/usbaudio
cd usbaudio
meson x --buildtype=release
cd x
ninja
sudo ninja install
