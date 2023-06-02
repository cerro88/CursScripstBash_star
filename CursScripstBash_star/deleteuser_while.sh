#!/bin/bash
function usage(){
    #INDICAM LES INSTRUCCIONS DEL SCRIPT
    echo "ejecutar como root"
    echo "INSTRUCCIONES: ./delete_user.sh USER_NAME [USER_NAME ... ]"
    exit 1
}
 #COMPROVAR QUE SOM USUARI ROOT 
if [[ ${UID} -ne 0 ]] 
then
    usage
fi
while [[ ${#} -ge 1 ]]
do
    USER_NAME=${1} #indica el parámetro en primera posición.
    userdel -r ${USER_NAME} 
    shift #desplaza el parámetro y resta uno al número de parámetros
done