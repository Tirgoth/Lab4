#!/bin/bash

argument2=$2 
data(){
	
	date

}

logs(){

	ilosc=100
	
	if [ "$argument2" -gt 0 ] 
	then ilosc=$argument2
	fi

	for ((i=1;i<=ilosc;i++))
	do
		echo log$i $(basename $0) $(data) > logs/logs$i/log$i.txt
	done
	
}

error(){

	ilosc=100
	
	if [ "$argument2" -gt 0 ] 
	then ilosc=$argument2
	fi

	for ((i=1;i<=ilosc;i++))
	do
		echo log$i $(basename $0) $(data) > error/error$i/error$i.txt
	done
	
}

init(){

	git clone https://github.com/Tirgoth/Lab4.git
	export PATH=$PATH:/skrypt.sh
}

help(){

	echo "--data or -d"
	echo "--logs or -l"
	echo "--help or -h"
	echo "--error or -e"
}

if [ "$1" = "--data" || "$1" = "-d" ] 
then
	data
elif [ "$1" = "--logs" || "$1" = "-l" ]
then
	logs
elif [ "$1" = "--error" || "$1" = "-e" ]
then
	error
elif [ "$1" = "--help" || "$1" = "-h" ]
then
	help
elif [ "$1" = "--init" ]
then 
	init
fi
 
