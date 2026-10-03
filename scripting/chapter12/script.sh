#!/usr/bin/env bash

function log_with_date {
  echo "$1"
  date "+%Y-%m-%d %H:%M:%S"
}

log_with_date 10

val=1

source ./second.sh

echo "$val" after importing

# testtt

# if [[ $val == 1 ]]; then
#   echo true
# fi

# while true; do
#   echo "$date_now"
#   sleep 1
# done
