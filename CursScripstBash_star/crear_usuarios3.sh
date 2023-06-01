#!/bin/bash

function usage(){
    echo "Usage ${0} USER_NAME [COMMENTS]"
    echo
    echo "Tienes que ser root"
    echo "COMMENTS incluirá el nombre completo del usuario"
    exit 1 #INDICA ERROR
}
#script para crear un usuario

#primero comprobamos que somos el usuario root
# echo ${UID} = indica cual es el UID del usuario
#validarse como root 'sudo su'

if [[ ${UID} -ne 0 ]] 
then
    usage
fi
#COMPROVAMOS QUE TENEMOS ALMENOS UN PARÁMETRO
if [[ ${#} -eq 0 ]]
then
    usage
fi

USER_NAME=${1}
#desplazamos parametros a la izquierda
shift
COMMENTS=${*}
#Generamos password aleatorio
PASSWORD=$( date +%s%N | sha256sum | head -cB )



#Se crea el usuario
useradd -m -c "${COMMENTS}" ${USER_NAME} &> /dev/null
#control del último comando
if [[ ${?} -ne 0 ]]
then
    echo "Error creando el usuario"
    exit 1
fi

#cambiar la contraseña del usuario
echo "${USER_NAME}:${PASSWORD}" | chpasswd
#comprabar si el cambio ha ido bien
if [[ ${?} -ne 0 ]]
then
    echo "Error cambiando la contraseña"
    exit 1
fi

#hacer que caduque la contraseña
passwd -e ${USER_NAME}
#IFORMAMOS DEL PASSWORD CRREADO
echo "nombre completo: ${COMMENTS}"
echo " Usuari creat: ${USER_NAME}"
echo "passworg generado: ${PASSWORD}"
echo "HostName: ${HOSTNAME}"


exit 0 #indica que el script acaba bien



#NOFUNCIONA
