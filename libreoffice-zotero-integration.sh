#!/usr/bin/env bash
VERMELHO='\e[1;91m'
VERDE='\e[1;92m'
SEM_COR='\e[0m'


PROGRAMAS_PARA_INSTALAR_APT=(
  openjdk-8-jre
  libreoffice-java-common
)
# Internet?
if ! ping -c 1 8.8.8.8 -q &> /dev/null; then
  echo -e "${VERMELHO}[ERROR] - Not connected.${SEM_COR}"
  exit 1
else
  echo -e "${VERDE}[INFO] - Connected ${SEM_COR}"
fi

#Zotero and Libreoffice integration Script
instalar_pacotes_apt_zotero_libreoffice () {
  for programa in ${PROGRAMAS_PARA_INSTALAR_APT[@]}; do
    if ! dpkg -l | grep -q $programa; then
      echo -e "${VERDE}[INFO] - Installing $programa...${SEM_COR}"
      sudo apt install $programa -y &> /dev/null
    else
      echo -e "${VERDE}[INFO] - The $programa it's already installed.${SEM_COR}"
    fi
  done
}

#----# Execução
instalar_pacotes_apt_zotero_libreoffice
