#!/bin/bash

#Usage of Script: ./forloop.sh count
#example: ./forloop.sh 20
#By Altaf Shaikh

for (( counter=$1; counter>0; counter-- ))
do
echo -n "$counter "
done
printf "\n"
