#!/bin/bash

#Los condicionales permiten que un script
#de shell se ejecute dependiendo de si 
#se cumple o no una determinada acción

echo -n "¿Desea instalar el programa? [S/n]:  "
read resultado
if [[ $resultado == "Ss" ]]; then
#ERROR EN LÍNEA 9 POR MALA EJECUCIÓN EN LA 7 []
#Me estaba dando error en la respuesta  
#porque no había indicado brackets en S/n
echo "instalando programa..."
#si queremos que cuando contestemos que no 
#imprima otra cosa 'else'
#echo" otra cosa..."
#si usamos else cualquier respuesta que no se S dará "otra cosa"
#para que se cumpla sí es "n" usaremos
#elif
elif [[ $resultado == "nN" ]]; then
#Nn Ss, se pueden mezclar para hacer programas más complejos
# después de la condición punto y coma + THEN
echo "no se ha instalado el programa..."
#elif es el contrario de if
#por lo tanto estamos diciendole al programa
#que haga una cosa si cumple una condición o otra
#si queremos que si no se cumple ninguna de esas dos condiciones
#imprima otro mensaje usamos 'else'
else
echo "opción invalida"
fi
#fi = fin


