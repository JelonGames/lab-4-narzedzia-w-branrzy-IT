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
		mkdir log$i
		cd log$i
		touch log$i.txt
		echo log$i.txt > log$i.txt
		echo $0 >> log$i.txt
		echo $(Date --date now) >> log$i.txt
		cd ..
	done
}

Help (){
	echo --logs towrzy 100 logów
	echo --logs "<wartość>" tworzy x logów
	echo --date wyświetla date
}

Init () {
	git clone https://github.com/JelonGames/lab-4-narzedzia-w-branrzy-IT.git
	rm -d -r -f lab-4-narzedzia-w-branrzy-IT/ >> PATH
	export PATH
	echo $PATH
}

case "$opt" in
	"--date" | "-d") Date_view;;
	"--logs" | "-l") Logs;;
	"--help" | "-h") Help;;
	"--init" | "-i") Init;;
	*) echo  nie znaleziono polecenia $opt
esac
