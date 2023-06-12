#!/bin/bash

# Aquest script s'ha d'executar com a root, en cas de no ser root s'ha de donar un missatge
# d'errada i sortir
function usage(){
    echo "S'ha d'accedir com a root"
    exit 1
}
if [[ ${UID} -ne 0 ]]
then
    usage
fi

# Mostra un missatge de benvinguda a l'examen d'scripts que indiqui l'usuari, la data i hora. Exemple:
# Benvingut/da a l'examen d'scripts, jo sóc en/na xavi. Avui és dia 11/06/2021 i són les 15:00h.
echo "Benvingut a l'examen d'scripts, sóc $(whoami). Avui és dia $(date +%d/%m/%Y) i són les $(date +%H:%Mh)"


# Demana que introduiexin un nom d'usuari i guarda-ho dins la variable USER
read -p "Introdueix un nom d'usuari: " USER

# Crear l'usuari de sistema amb el valor de la variable USER
useradd -m ${USER}

# Si s'ha produït una errada creant l'usuari donar un missatge d'error i sortir.
if [[ ${?} -ne 0 ]]
then 
    echo "Errada creant l'usuari"
    exit 1
else
    echo "Usuari creat: ${USER}"
fi


#Mostrau el contingut del fitxer /etc/passwd i comprovau que s'ha creat l'usuari.
cat /etc/passwd
