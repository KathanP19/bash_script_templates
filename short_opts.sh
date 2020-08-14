#!/bin/bash

#Print You LOGO
logo(){

}
logo

#Functions
gather_links(){
echo "gathering Links for $target" | tee links.txt
}

#Save in Output Folder
output(){
mkdir -p $dir
mv links.txt $dir/
}

while getopts ":l:o:" opt;do
        case ${opt} in
                l ) target=$OPTARG
                    gather_links
                    ;;
                o ) dir=$OPTARG
                    output
                    ;;
                \? ) echo "Usage: "
                     echo "       -l   Gather Files Links";
                     echo "       -o   Make an Output Directory to put all things Together";
                     ;;
                : ) echo "Invalid Options $OPTARG require an argument";
                    ;;
        esac
done
shift $((OPTIND -1))
