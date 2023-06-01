#!/bin/bash

#Añadir prefijos a los ficheros de un directorio
error() {
    echo $1 #llamamos al primer parametro de la función
    exit 1
}

#
if [[ $# -ne 2 ]]
then 
    error "Inserte: Scrip prefijo y ruta"
fi

# comprobar que le directorio existe
if [ ! -d $2 ] 
then
    error "Error: el directorio no existe"
fi

# Recorrer cada fichero del directorio
for f in `ls $2`
do
    # Guardar en una variable el nombre actual con la ruta completa
    name="$2/$f"
    # Guardar en una variable el nombre nuevo
    #new_name=
    new_name="$2/$1$f"
    # Cambiar el nombre del fichero
    `mv $name $new_name`
    # Imprimir lo que está haciendo el script
    echo "$name -> $new_name" | tr -s /
    done