#!/bin/bash 

option=0

while [ $option -ne 4 ]

do
	echo ""
	echo "1) monitoreo"
	echo "2) instalaciones"
	echo "4) salir"
	echo ""

	read option

	case $option in

	1)
		sh ./monitoreo.sh
		;;

	2)
		sh ./instalaciones.sh
		;;

	3)
		echo "prueba"
		;;

	4)
                echo "bye bye"
                ;;

	*)
		echo "pruebe con otra opcion"
		;;
	esac

done
