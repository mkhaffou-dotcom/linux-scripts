#!/bin/bash

mostrar_menu() {
	echo "========================"
	echo " MENÚ PRINCIPAL"
	echo "========================"
	echo "1. Mostrar nombre"
	echo "2. Mostrar fecha"
	echo "3. Mostrar usuario"
	echo "4. Salir"
}

mostrar_nombre() {
        local nombre="$1"
        echo "Nombre recibido: $nombre"
}

mostrar_fecha() {
	local fecha
	fecha=$(date)
	echo "Fecha actual:"
	echo "$fecha"
}

mostrar_usuario() {
	local usuario
	usuario=$(whoami) 
	echo "Usuario conectado: $usuario"
}

if [ "$1" = "1" ]; then
        mostrar_nombre "$2"
        exit
fi

if [ "$1" = "-a" ]; then
        mostrar_nombre "$2"
        exit
fi

if [ "$1" = "--add" ]; then
        mostrar_nombre "$2"
        exit
fi


opcion=0

while [ "$opcion" != "4" ]
do
	mostrar_menu
	read -p "Seleccione una opción: " opcion

	case $opcion in
        1)
		read -p "Introduzca un nombre: " nombre
		mostrar_nombre "$nombre"
		;;
        2)
		mostrar_fecha
		;;
        3)
		mostrar_usuario
		;;
        4)
		echo "Saliendo..."
		;;
        *)
		echo "Opción incorrecta"
		;;
	esac

done
