# #!/bin/bash

# #script que instalará los paquetes básicos en ubuntu
# #un navegador y un editor de código

# if [[ ${UID} -ne 0 ]]
# then
#     echo "No eres el administrador"
#     exit 1
# fi


# # apt update 
# # apt upgrade
# # apt install net-tools tree wget curl snap
# # #se instalará Brave 
# # curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# # echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list 
# # apt update
# # apt install brave-browser
# # apt update
# # #Visual Studio Code
# # #se instalan las dependencias
# # apt install software-properties-common apt-transport-https wget
# # # se Importa la clave GPG
# # wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# # #se habilita el repositorio de código de Visual Studio
# # add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# # #se instala Visual Studio
# # apt install code
# # apt update 


