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
# #FOR ES UN BUCLE QUE SE EJECUTA POR CADA ELEMENTO ${@}
# #estructura de control para iterar parámetros
for USER_NAME in "${@}"
do 
#ENTRAREMOS EN ESTE BLOC TANTAS VECES COMO PARAMETROS QUE PONGAMOS EN EL SCRIPT
   
    
    #ELIMINAR USUARIO CON EL HOME -m
    userdel -r ${USER_NAME} 

done
