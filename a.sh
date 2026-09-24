#!/bin/bash

echo "Actualizando la lista de paquetes..."
sudo apt update

echo "Actualizando los paquetes instalados..."
sudo apt upgrade -y

echo "Actualización completada."
