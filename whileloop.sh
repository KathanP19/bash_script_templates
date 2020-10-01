#!/bin/bash

#Usage of Script: ./whileloop.sh count
#example: ./whileloop.sh 20
#By Altaf Shaikh

valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq $1 ];
then
break
fi
((count++))
done
