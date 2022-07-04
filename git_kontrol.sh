#!/bin/bash

opt=$1

Date_view () {
	echo $(Date --date now)
}

case "$opt" in
	"--date") Date_view;;
	*) echo  nie znaleziono polecenia $opt
esac
