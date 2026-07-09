#!/bin/bash
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "-a option found";;
    -b) param="$2"
        echo "-b option found, with value $param"
        shift;;
    -c) echo "-c option found";;
    --) shift
        break;;
    *) echo "Option $1 is not an option";;
  esac
  shift
done


num=1
for param in $@
do
  echo "#$num: $param"
  num=$(( num + 1 ))
done
