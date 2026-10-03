#! /usr/bin/env bash

# echo "$1" "$2" "$3"
# shift 1
# echo "$1" "$2"

echo "$VAR"

todayDate=$(date +%Y-%m-%d)
arr=(one two three)

echo ${#arr}

tar cvfz backup-"$todayDate".tar.gz .

for v in srv{1..10}-{l,w,v}; do
  echo "$v"
done

while [[ $1 != "" ]]; do
    case $1 in
        -n | --name)
            shift
            echo "name: $1"
            ;;
        -a | --age)
            shift
            echo "age: $1"
            ;;
        *) shift
    esac
done
