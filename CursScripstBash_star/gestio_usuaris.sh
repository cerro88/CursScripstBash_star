#!/bin/bash
NOM_SCRIPT=${0}
USUARIOS=0
function usage(){
    # Indicamos las instrucciones del script
    echo "${NOM_SCRIPT} ACTION FILE_NAME"
    echo "ejecutar como root"
    exit 1
}
function create_user(){
    echo "create user ${1}"
    USER_NAME=${1}
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    # Crear usuario con el directorio de inicio (-m)
    useradd -m ${USER_NAME}

    # Comprobar que se ha creado correctamente
    if [[ ${?} -ne 0 ]]
    then
        echo "Error creando el usuario ${USER_NAME}"
        exit 1
    else
        echo "Se ha creado el usuario ${USER_NAME}"
    fi
    # Cambiar contraseña
    echo "${USER_NAME}:${PASSWORD}" | chpasswd
    # Comprobar si el cambio ha ido bien
    if [[ ${?} -ne 0 ]]
    then
        echo "Error cambiando la contraseña del usuario ${USER_NAME}"
        exit 1
    fi
    # Imponer un cambio de contraseña en el siguiente inicio de sesión
    passwd -e ${USER_NAME}
}
function delete_user(){
    echo "delete user ${1}"
    USER_NAME=${1}
    deluser --remove-home ${USER_NAME}
    if [[ ${?} -ne 0 ]]
    then
        echo "Error creando el usuario ${USER_NAME}"
        exit 1
    fi
}

# Comprobamos que estamos como root 
if [[ ${UID} -ne 0 ]] 
then
    usage
fi
NUMERO_PARAMETROS=${#}
if [[ ${NUMERO_PARAMETROS} -ne 2 ]]
then
    usage
fi

ACTION=${1}

FICHERO=${2}
USUARIOS=0
for USER in $(cat ${FICHERO})
do
    if [[ ${ACTION} == "create" ]]
    then
        create_user ${USER}
    elif [[ ${ACTION} == "delete" ]]
    then    
        delete_user ${USER}
    else
        echo "ACCIÓN ${ACTION} NO DISPONIBLE"
        exit 1
    fi
    USUARIOS=$((USUARIOS+1))
done
DATA=$(date)
HOST=$(hostname)
MENSAJE=""
if [[ ${ACTION} == "create" ]]
then
    MENSAJE="Se acaban de crear ${USUARIOS} usuarios en ${HOST} con fecha: ${DATA}"
else    
    MENSAJE="Se acaban de crear ${USUARIOS} usuarios en ${HOST} con fecha: ${DATA}"
fi

/home/belen/Code/CursScripstBash_star/CursScripstBash_star/boot-mensaje.sh "${MENSAJE}"