#!/bin/bash
function usage(){
    #INDICAM LES INSTRUCCIONS DEL SCRIPT
    echo "ejecutar como root"
    echo "INSTRUCCIONS: ./create_users.sh USER_NAME [USER_NAME ... ]"
    exit 1
}
 #COMPROVAR QUE SOM USUARI ROOT 
if [[ ${UID} -ne 0 ]] 
then
    usage
fi

#nos enseña el nombre del script que ejecutamos
echo "Nombre del script ${0}"

#enseña el PATH (RUTA) i el filename del script
echo "el PATH: $(dirname ${0}) el fichero sera $(basename ${0})"
#/home/belen/cusScriptsBash/ =PATH (RUTA) Y basename sera el nombre del fichero
#para determinar el numero de parámetros
NUMERO_PARAMETROS=${#}
echo "NUMERO DE PARAMETRES: ${NUMERO_PARAMETRES}"
# Si el número de paràmetres és igual zero ha de sortir (exit 1),
#indicant que el primer paràmetre és obligatori i que rebrà de nom USER_NAME, 
#i que pot rebre paràmetres opcionals que també seran noms d'usuaris.
if [[ ${NUMERO_PARAMETROS} -eq 0 ]]
then
    usage
fi

# #${*} enseña el conjunto de parámetros en una sola palabra
# echo "${*}"

# #${@} enseña el conjunto de parámetres en palabras diferentes
# echo "${@}"
# #FOR ES UN BUCLE QUE SE EJECUTA POR CADA ELEMENTO ${@}
# #estructura de control para iterar parámetros
for USER_NAME in "${@}"
do 
#ENTRAREMOS EN ESTE BLOC TANTAS VECES COMO PARAMETROS QUE PONGAMOS EN EL SCRIPT
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    
    #CREAR USUARI CON EL HOME -m
    useradd -m ${USER_NAME} 

    #COMPROBAR QUE SE HA CREADO
    if [[ ${?} -ne 0 ]]
    then
        echo "Error creando el usuario"
        exit 1
    else
    echo "Se ha creado el usuario"
    fi


    #CAMBIAMOS PASSWORD
    echo "${USER_NAME}:${PASSWORD}" | chpasswd
    #comprabar si el cambio ha ido bien
    if [[ ${?} -ne 0 ]]
    then
        echo "Error cambiando la contraseña"
        exit 1
    fi

    #IMPONER UN CAMBIO DE PASSWORD EN EL SIGUIENTE LOGIN
    passwd -e ${USER_NAME}

done
