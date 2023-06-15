#!/bin/bash

# script que instalará los paquetes básicos en ubuntu

function usage(){
    echo "Error de instalación"
    exit 1
}
function actualizar(){
    apt update && apt upgrade
}

if [[ ${UID} -ne 0 ]]
then
    echo "No eres el administrador"
    exit 1
fi

#se actualiza el sistema
actualizar
#se instalan una serie de paquetes básicos para el terminal Linux
apt install net-tools tree wget curl snap ssh git
#comprueva si ha habido algún error en la intalación de los paquetes
if [[ ${?} -ne 0 ]]
then
    usage
fi
#se vuelve a actualizar el sistema
actualizar
#se descarga el instalador de chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#se instala chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
#si hay algun problema con la instalación
if [[ ${?} -ne 0 ]]
then
sudo apt-get install -f
    #se vuelve a comprobar los errores
    if [[ ${?} -ne 0 ]]
    then
        usage
    fi
fi
actualizar