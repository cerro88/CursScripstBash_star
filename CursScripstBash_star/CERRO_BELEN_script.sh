#!/bin/bash

# Mostra un missatge de benvinguda a l'examen d'scripts que indiqui l'usuari, la data i hora. Exemple:
# Benvingut/da a l'examen d'scripts, jo sóc en/na xavi. Avui és dia 11/06/2021 i són les 15:00h.
echo "Benvingut a l'examen d'scripts, sóc $(whoami). Avui és dia $(date +%d/%m/%Y) i són les $(date +%H:%Mh)"

# Crea la següent estructura de carpetes amb UNA SOLA COMANDA i mostra-la en forma d'ARBRE:
# examen_scripts/
# examen_scripts/apunts
# examen_scripts/exercicis



# Modifica els permisos del directori examen_scripts per que tothom el pugui llegir i el propietari 
# el pugui llegir, escriure i executar.
# Mostra per pantalla aquests permisos.

# Crea la variable NOTA_EXAMEN i dona-li un valor aleatori entre 0 i 10.
# Mostra una frase per pantalla com aquesta: La nota del meu examen és un 7.
NOTA_EXAMEN=$(( (RANDOM %10) +1 ))
echo "La nota del meu examen és un ${NOTA_EXAMEN}."


# Demana a l'usuari si ha tingut bona aptitud a classe. 
NOTA_FINAL=0 
read -p "Has tingut una bona aptitud a classe? (si/no): " RESPOSTA1
# Si contesta "Sí" suma-li un punt a la nota de l'examen, si contesta "No" resta-n'hi un.
if [[ ${RESPOSTA1} == "si" ]]
then 
    NOTA_FINAL=$((NOTA_EXAMEN+1))
elif [[ ${RESPOSTA1} == "no" ]]
then 
 NOTA_FINAL=$((NOTA_EXAMEN-1))
else
    echo "Aquesta resposta no és correcta"
    exit 1
fi
# Si l'alumne ha aprovat ha de sortir un missatge com: la teva nota final és un 5, has aprovat
if [[ ${NOTA_EXAMEN} -ge 5 ]]
then 
    echo "La teva nota final és un ${NOTA_EXAMEN}, has aprovat!"
# Si l'alumne ha suspès ha de sortir un misstge com: la teva nota és un 3, has suspès
elif [[ ${NOTA_EXAMEN} -lt 5 ]]
then
    echo "La teva nota és un ${NOTA_EXAMEN}, has suspès!"
fi
echo "La teva nota final és: ${NOTA_FINAL}"