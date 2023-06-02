#!/bin/bash
function usage(){
    #INDICAM LES INSTRUCCIONS DEL SCRIPT
    echo "ejecutar como root"
    echo "INSTRUCCIONS: ./createuser_while.sh USER_NAME [USER_NAME ... ]"
    exit 1
}
 #COMPROVAR QUE SOM USUARI ROOT 
if [[ ${UID} -ne 0 ]] 
then
    usage
fi

#mientras el número de parámetros sea más grande o = a 1
while [[ ${#} -ge 1 ]]
do
    USER_NAME=${1} #indica el parámetro en primera posición.
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    shift #desplaza el parámetro y resta uno al número de parámetros
done