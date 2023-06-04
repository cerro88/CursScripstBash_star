#!/bin/bash
function usage(){
    # Indicamos las instrucciones del script
    echo "ejecutar como root"
    echo "INSTRUCCIONES: ./deleteusers_fichero.sh archivo.txt"
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
    # eliminar el usuario
    userdel -r ${USER_NAME}

    # Comprobar que se ha eliminado correctamente
    if [[ ${?} -ne 0 ]]
    then
        echo "Error eliminando el usuario ${USER_NAME}"
        exit 1
    else
        echo "Se ha eliminado el usuario ${USER_NAME}"
    fi
done 