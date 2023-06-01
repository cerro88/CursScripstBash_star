#!/bin/bash
function usage(){
    echo "Usage ${0}"
    echo
    echo "Tienes que ser root"
    echo "el usuario no se puede repetir"
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

