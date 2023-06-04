#!/bin/bash

function usage(){
    echo "Usage ${0}"
    echo
    echo "Tienes que ser root"

    exit 1
}
#script para crear un usuario

#primero comprobamos que somos el usuario root
# echo ${UID} = indica cual es el UID del usuario
#validarse como root 'sudo su'

if [[ ${UID} -ne 0 ]] 
then
    usage
fi

read -p "Introduce el nombre de usuario: " USER_NAME

echo "creando usuario ${USER_NAME}"

if [[ ${UID} -ne 0 ]] 
then
    usage
fi

read -p "Introduce el nombre completo: " COMMENTS
#Se pide el nombre del usuario
read -p "Introduce el nombre del usuario: " USER_NAME
#Se pide la contraseña
read -p "Introduce la contraseña: " PASSWORD


#Se crea el usuario
#-m crea el home
#-c comentarios ya que el nombre completo contiene espacios
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


exit 0 #indica que el script acaba bien