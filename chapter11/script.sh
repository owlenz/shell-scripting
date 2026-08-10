#! /usr/bin/env bash

# echo $1 $2 $3
# shift 2
# echo $1 $2 $3

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
