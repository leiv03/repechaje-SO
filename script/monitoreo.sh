#!/bin/bash

echo "--------------------------"
echo "1) ver uso de disco"
echo "2) ver uso de cpu"
echo "3) ultimos usuarios logueados"
echo "4) ver estado un servicio"
echo "--------------------------"
echo "presione cualquier tecla para salir"
read option
echo ""
case $option in
	1) df -h
	echo "--------------------------"
	;;
	2) top -n 1 | grep Cpu
	echo "--------------------------"
	;;
	3) last -n 15
	echo "--------------------------"
	;;
	4)
	echo "a continuacion escriba el servicio que desea verificar"

	read service

	echo "--------------------------"
	systemctl status "$service"


	if [ $? != 0 ]; then
		echo "--------------------------"
    		echo "coincidencias:"
		
		systemctl list-unit-files --type service --all | grep "$service" 
	fi	
	;;
	*) echo "volviendo..."
	;;

esac
