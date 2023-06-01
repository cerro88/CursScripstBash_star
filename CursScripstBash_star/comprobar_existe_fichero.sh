#!/bin/bash

#cat $1 leerá si ejecutamos el programa ./programa.sh
#y luego le indicamos un fichero ./programa ./fichero.txt

#testear que existe un fichero '(-f )=fichero
#si quisieramos testear si existe un directorio (-d)'

if [ -f $1 ] #si existe o es un fichero./x.txt
then #entonces queremos
    echo "el fichero existe"
else #si no
    echo "el fichero no existe"
fi

#tip
# if [ ! -f $1 ]

# ! si no existe -f el fichero escribe ...