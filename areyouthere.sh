#!/bin/bash

#Usage of Script: ./areyouthere.sh firstArg secondArg
#example: ./areyouthere.sh google.com googlesub.txt
#By SouravSec

#function
if [ -z "$1" ] #if firstArg/$1 is not given
  then
    echo "First Argument is not defined"
    echo "Usage : areyouthere.sh <firstArg> <secondArg>"
    exit 1
fi

if [ -z "$2" ]  #if seondArg/$1 is not given
  then
    echo "Second argument is not defined"
    echo "Usage : areyouthere.sh <firstArg> <secondArg>"
    exit 1
fi


#Print You LOGO
logo(){
figlet AreYouThere
}

logo

echo "Gathering Subdomains... "
subfinder -d $1 -o $2