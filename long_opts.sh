#!/bin/bash

logo(){

}

intel(){
echo -e "Starting to Gather Intel ..!";
echo -e "passed value $val" 
}

while getopts ":h-:" optchar;do
        case "${optchar}" in
                -)
                        case "${OPTARG}" in
                                ia)
                                        val="${!OPTIND}"; OPTIND=$(( $OPTIND + 1))
                                        intel;
                                        ;;
                                *)
                                        if [ "$OPTERR" = 1 ] && [ "${optspec:0:1}" != ":" ]; then
                                        echo "Unknown option --${OPTARG}" >&2
                                        fi
                                        ;;
                        esac;;
                h)
                        echo "usage: $0 [--ia] <value>"
                        exit 2
                        ;;
                *)
                        if [ "$OPTERR" != 1 ] || [ "${optspec:0:1}" = ":" ]; then
                        echo "Non-option argument: '-${OPTARG}'";
                        fi
                        ;;
        esac
done
