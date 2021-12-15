#!/bin/bash


echo "-----------------------"
echo "1) instalar mysql server"
echo "2) instalar sshd"
echo "3) instalar nginx server"
echo "presione cualquier letra para salir"
echo ""
read opciones

case $opciones in

	1)
	#instalar mysql
	sudo yum -y install mysql-server
	;;

	2)
	#instalacion sshd
	sudo yum -y install openssh-server
	;;
 
 3)
 #instalacion sshd
 yum -y install nginx
 ;;

	*)
	echo "volviendo ..."
	;;

esac


