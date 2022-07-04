#!/bin/bash

opt=$1
value=$2

Date_view () {
	echo $(Date --date now)
}

Logs () {
	temp=100

	if [ ! -z ${value} ]; 
	then
		temp=$value
	fi

	for ((i = 1; i <= ${temp}; i++)); do
		touch log$i.txt
		echo log$i.txt > log$i.txt
		echo $0 >> log$i.txt
		echo $(Date --date now) >> log$i.txt
	done
}

Help (){
	echo --logs towrzy 100 logów
	echo --logs "<wartość>" tworzy x logów
	echo --date wyświetla date
}

case "$opt" in
	"--date") Date_view;;
	"--logs") Logs;;
	"--help") Help;;
	*) echo  nie znaleziono polecenia $opt
esac
