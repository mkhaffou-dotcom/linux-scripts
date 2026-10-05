#!/bin/bash

# Función que muestra un mensaje de bienvenida personalizado
benvinguda() {
    local nom=$1
    echo "Hola $nom, anem a comprovar el sistema"
}

# Función que comprueba si existe un usuario
comprova_usuari() {
    local usuari=$1

    if grep -q "^$usuari:" /etc/passwd; then
        echo "El usuario $usuari existe en el sistema."
    else
        echo "El usuario $usuari no existe en el sistema."
    fi
}

# Función que muestra el espacio disponible
calculadora_espai() {
    echo "Espacio disponible en la partición principal:"
    df -h /
}

# Programa principal

read -p "Introduce tu nombre: " alumne
benvinguda "$alumne"

read -p "Introduce un usuario del sistema: " usuari
comprova_usuari "$usuari"

calculadora_espai
