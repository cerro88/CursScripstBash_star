#!/bin/bash
#script para calcular los bytes de los
#ficheros de un directorio

#Antes de nada queremos que en caso de no existir
#el directorio nos de un error

if [ ! -d $1 ] #parametro a pasar 'directorio'
then
   echo "Error: el directorio no existe"
   exit 1 # indica que no ha ido bien
#si todo ha ido bien pasará a la próxima orden

fi
total=0
#se inicia un total a 0 que se le iran 
#sumando los bytes de cada fichero
for f in `ls $1` #bucle que recorre los valores
#con ls recogemos los nombres
#PARA USAR COMANDOS USAMOS COMILLAS INVERTIDAS ``
do
    name="$1/$f" #ruta directorio/fichero
    #de esta forma nos dirá los ficheros 
    #que hay en el directorio
    if [ -f $name ]
    then
        bytes=`ls -l $name | cut -d " " -f 5`
#pasando bytes=`ls -l $name por una tuberia 'pipe'
#al cut -delimitador "un espacio" + campo 5
#-rwxr-xr-x 1 belen belen  443 may  3 08:46 ejem.sh
#hay un espacio entre campos
#los bytes aparecen en el campo 5
        echo "Fichero $name ocupa $bytes bytes" | tr -s /
        # tr -s eliminará caracterés repetidos
        #hace más bonito el resultado
        (( total = $total + $bytes ))
            #esta línea podría escribirse
            # ((total += $bytes)) atajo
    fi
done

echo -e "\ntotal: $total" 
# -e \n salto de línea ente el total y la info
#hace el resultado más bonito


