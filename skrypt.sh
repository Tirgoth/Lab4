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
		echo log$i $(basename $0) $(data) > logs/log$i.txt
	done
	
}

help(){

	echo "--data or -d"
	echo "--logs or -l"
	echo "--help or -h"

}

if [ "$1" = "--data" || "$1" = "-d" ] 
then
	data
elif [ "$1" = "--logs" || "$1" = "-l" ]
then
	logs
elif [ "$1" = "--help" || "$1" = "-h" ]
fi
 
