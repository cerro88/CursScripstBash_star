#!/bin/bash
#este script crea usuarios a partir de un fichero


function usage(){
    # Indicamos las instrucciones del script
    echo "ejecutar como root"
    echo "INSTRUCCIONES: ./create_users_from_file.sh FILENAME"
    exit 1
}

# Comprobamos que estamos como root 
if [[ ${UID} -ne 0 ]] 
then
    usage
fi

# Leemos el contenido del archivo y lo procesamos línea por línea
for USER_NAME in $(cat "${1}")  
do
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

done < "${1}"