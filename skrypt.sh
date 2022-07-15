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

	echo "--data"
	echo "--logs"
	echo "--help"

}

if [ "$1" = "--data" ]
then
	data
elif [ "$1" = "--logs" ]
then
	logs
elif [ "$1" = "--help" ]
fi

