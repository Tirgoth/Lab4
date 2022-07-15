#!/bin/bash

nazwa_pliku=$(basename -- "$0")

data(){
	
	date

}

logs(){

	for i in {1..100}
	do
		echo log$i $(basename $0) $(data) > logs/log$i.txt
	done
}


if [ "$1" = "--data" ]
then
	data
elif [ "$1" = "--logs" ]
then
	logs
fi

