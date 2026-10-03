#! /usr/bin/env bash

dir=$(pwd)

case $1 in
    copy)
        if [ -d ~/.docker ]; then
            echo $dir
        else
            echo "docker home directory doesn't exist"
        fi
        ;;
    create)
        for file in srv{x,y,z}-{1..6}; do
            touch $file
        done
        ;;
    delete)
        rm srv*
        ;;
    help) printf "copy\ndelete\n" ;;
    *) printf no arguments
esac
