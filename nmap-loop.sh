#!/bin/bash

#Usage of Script: ./nmap-loop.sh ip-list.txt
#By souravbaghz

#Loopfunction
cat $1 | while read line; do
	echo "---------------------------------"
	echo "Nmap Started for $line"
	nmap -sV $line
done
