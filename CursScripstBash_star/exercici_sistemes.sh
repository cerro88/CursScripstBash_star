#!/bin/bash

# Escriu les comandes que s'indiquen a cada punt i executa l'script.
# Recorda que és necessari que aquest tingui permisos d'execució.
# començau cada apartat amb un echo indicatiu del que feu (com a l'exemple)

# 0) Exemple: mostra el nom de l'usuari actual:
echo "EXERCICIC 0"
echo "---------------------------------------------------"
echo "Nom de l'usuari: "
whoami
echo 

# 1) Mostra un missatge per pantalla amb el texte "El meu primer script"
echo "EXERCICIC 1"
echo "---------------------------------------------------"
echo "El meu primer script"



# 2) Mostra un missatge per pantalla amb la data actual i el format: Avui es dia 18/05/2021
#    Recorda l'us de la comanda: date
#    Pots obtenir ajuda amb: date --help o man date, per exemple amb date +"Any %Y" obtenim el missatge: Any 2021
echo "EXERCICI 2"
echo "---------------------------------------------------"
echo "Avui es dia $(date +"%d/%m/%Y")"


# 3) Mostra un missatge per pantalla amb l'hora actual i el format: Son les 15:20h
#    usa la mateixa comanda: date
echo "EXERCICI 3"
echo "---------------------------------------------------"
echo "Son les $(date +"%H:%Mh")"


# 4) Mostra el contingut del directori actual
echo "EXERCICI 4"
echo "---------------------------------------------------"
echo "El contingut del directori actual es:"
ls  -la .


# 5) Mostra el contingut del directori temporal /tmp
echo "EXERCICI 5"
echo "---------------------------------------------------"
echo "El contingut del directori temporal /tmp es: "
ls -l /tmp/ | tail -n 1 

# 6) Crea dos directoris nous a /tmp anomenats prova i copies
echo "EXERCICI 6"
echo "---------------------------------------------------"
mkdir /tmp/prova
mkdir /tmp/copies


# 7) Dins el directori prova del pas anterior, crea la següent estructura:
#  /tmp/prova/ingressos
#  /tmp/prova/despeses
echo "EXERCICI 7"
echo "---------------------------------------------------"
mkdir /tmp/prova/ingressos
mkdir /tmp/prova/despeses


# 8) Modifica els permisos del directori d'ingressos per que tothom hi pugui accedir, llegir i escriure
echo "EXERCICI 8"
echo "---------------------------------------------------"
chmod ugo+rwx /tmp/prova/ingressos 


# 9) Modifica els permisos del directori despeses per que només el propietari hi tingui accés
echo "EXERCICI 9"
echo "---------------------------------------------------"
chmod go-rwx /tmp/prova/ingressos


# 10) Fes una copia del directori /tmp/prova a /tmp/copia
echo "EXERCICI 10"
echo "---------------------------------------------------"
cp -r /tmp/prova /tmp/copia


# 11) *Opcional*
#     Fes una copia del directori /tmp/prova a /tmp/copies/18052021_1525
#     El directori de destí ha de tenir la data i la hora del moment en que s'executa l'script
#     Usa la comanda cp -r /tmp/prova /tmp/copies/$(date +"<FORMAT>"), canvia <FORMAT> pel format de la data corresponent, igual que als punts anteriors.
echo "EXERCICI 11"
echo "---------------------------------------------------"
DIRECTORI=$(date +"%d_%m_%Y_%H:%Mh")
echo /tmp/copies/${DIRECTORI}
mkdir -p /tmp/copies/${DIRECTORI}
cp -r /tmp/prova /tmp/copies/${DIRECTORI}
#no funciona

# 12) Mostra el contingut del directori /tmp/copia en forma d'arbre
echo "EXERCICI 12"
echo "---------------------------------------------------"
tree /tmp/copia


# 13) Mostra el contingut del directori /tmp/copies en forma d'arbre
echo "EXERCICI 13"
echo "---------------------------------------------------"
tree /tmp/copies


# 14) Esborra els directoris /tmp/copies i /tmp/prova i tot el seu contingut
echo "EXERCICI 14"
echo "---------------------------------------------------"
rm -r /tmp/copies
rm -r /tmp/prova


# 15) Mostra l'espai lliure del disc dur. (Les unitat han de ser human-readable: 10GB, 123Mb, etc...)
#     Usa la comanda df, pots obtenir ajuda amb df --help o man df 
echo "EXERCICI 15"
echo "---------------------------------------------------"
df -h | grep -m 2 "/dev/sda1" |tail -n 1 | awk '{print $4}'

# 16) Mostra l'informació de la memoria del sistema. (Les unitat han de ser human-readable: 10GB, 123Mb, etc...)
#     Usa la comanda free, pots obtenir ajuda amb free --help o man free
echo "EXERCICI 16"
echo "---------------------------------------------------"
free -l -h # -l dona informació més completa del sistema, on surt també la memòria swap

# 17) Crea un nou script, al directori actual, anometat system_info.sh, que mostri informació del disc dur i de la memoria RAM usant les comandes anteriors.
#     Crida aquest nou script que acabes de crear.
echo "EXERCICI 17"
echo "---------------------------------------------------"
touch system.info.sh
chmod u+x system_info.sh
echo "#!/bin/bash" > system_info.sh"
echo "df -h | grep -m 2 "/dev/sda1" |tail -n 1 | awk '{print $4}'" >> system_info.sh
echo "free -l -h" >> system_info.sh"
chmod u+x system_info.sh


# 18) Mostra el contingut de l'script anterior
#     Usa la comadna cat
echo "EXERCICI 18"
echo "---------------------------------------------------"
cat system_info.sh


# 19) Mostra tots els fitxers del directori actual que acabin amb la l'extensió .sh
#     Has d'usar la comanda cat
 echo "EXERCICI 19"
 echo "---------------------------------------------------"
 cat *.sh

# 20) *Opcional*
#     Fes el mateix que abans, pero usant la comanda find. Pots obtenir ajuda amb find --help o man find.
 echo "EXERCICI 20"
 echo "---------------------------------------------------"
 find . -type f -name "*.sh" #-type fichero -name "lo que buscamos"

# Fi. Acabam l'script retornant un 0, axiò vol dir que l'script ha acabat correctament.
exit 0