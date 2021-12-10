#!/bin/bash

echo "1) ver uso de disco"
echo "2) ver uso de cpu"
echo "3) ultimos usuarios logueados"
echo "4) ver estado un servicio"
echo "presione cualquier tecla para salir"

read option

case $option in
	1) df -h
	;;
	2) top -n 1 | grep Cpu
	;;
	3) last -n 15
	;;
	4) echo "4"
	;;
	*) echo "volviendo..."
	;;

esac
