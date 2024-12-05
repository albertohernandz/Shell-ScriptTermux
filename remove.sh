#!/bin/bash

# Función para desinstalar un paquete
desinstalar_paquete() {
    local paquete=$1
    read -p "Deseas desinstalar $paquete (y/n) ? " respuesta
    case $respuesta in
        "y" | "Y")
            echo "Desinstalando $paquete..."
            apt remove $paquete -y
            apt autoremove -y
            sleep 1.5 ;;
        "n" | "N")
            echo "Proceso cancelado por el usuario."
            sleep 1.5 ;;
        *)
            echo "Opcion incorrecta, vuelve a intentar."
            desinstalar_paquete $paquete ;;  # Recursión para volver a preguntar
    esac
}

# Llamada a la función para Git y Ruby
desinstalar_paquete git
desinstalar_paquete ruby
