#!/usr/bin/env bash

# Pedir al usuario que ingrese un directorio
read -p "Ingrese un directorio: " directorio

# Verificar si el directorio existe
if [ -d "$directorio" ]; then
   echo "El directorio existe"
   exit 0
else
   echo "El directorio no existe"
   # exit 1
fi

read -p "Deseas crear el directorio? [Y/n] " letra

while true; do
      if [[ "$letra" == "y" || "$letra" == "Y" ]]; then
         echo "Creando el directorio, por favor espera ..."
         mkdir "$directorio"
         sleep 1.5
         exit 0
      elif [[ "$letra" == "n" || "$letra" == "N" ]]; then
           echo "Operacion cancelada por el usuario $(whoami)"
           sleep 1.5
           exit 1
      else
           echo "Opcion invalida, intenta nuevamente."
      fi
done
