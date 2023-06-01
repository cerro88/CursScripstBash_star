#!/bin/bash
echo "CONVERSOR DE GRADOS FAHENHEIT A GRADOS CELSIUS"
read -p "Grados fahrenheit: " F
C=$(((F-32)*5/9))
echo "Grados Celsius: ${C}"

#BUSCAR LA MENERA DE USAR BC EN LA DIVISIÓN Y QUE 
#EL RESULTADO SEA EXACTO