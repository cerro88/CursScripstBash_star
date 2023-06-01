#!/bin/bash
function usage (){
      echo 
    echo "USAGE: ${0} USER_NAME [COMMENTS]"
    echo "COMMENTS contiene el nombre  completo"
    exit 1
}
NUMBER_PARAM=${#}
if [[ NUMBER_PARAM -eq 0 ]]
then 
   usage #creamos la función arriba y la lamamos
fi
#OBLIGAR A QUE MÍNIMO SE TENGA QUE INTRODUCIR UN PARÁMETRO

#aprenderemos a tratar con los argumentos (como se llaman fuera)
#y parámetros (como se llaman dentro)
SCRIPT_NAME=${0}
echo "Nombre del script: ${SCRIPT_NAME}"
#${1}.....${9}
echo ¨primer parámetro: ${1}¨
USER_NAME=${1}
echo ¨USER_NAME: ${USER_NAME}¨
#PARA DESPLAZAR LOS PARÁMETROS A LA IZQUIERDA SHIFT
#nos servirá para recoger el nombre completo del usuario
#no todos los nombres completos tienen 3 parametros
shift
#el asterisco cogerá todos los parámetros posicionales 
#independientemente de los que sean y los juntará
NOM_COMPLET=${*}
echo ¨NOM COMPLET: ${NOM_COMPLET}¨
