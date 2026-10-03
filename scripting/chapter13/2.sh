#!/usr/bin/env bash

USER=demo
CMD=testing
HOSTNAME=$(hostname)

function printaarr {
  local -n ref=$1
  keys=("${!ref[@]}")
  if (($# >= 3)); then
    for name in "${keys[@]:$2:$3}"; do
      echo "$name", "${ref[$name]}"
    done
  else
    for name in "${keys[@]}"; do
      echo "$name", "${ref[$name]}"
    done
  fi
}

declare -A aarr
aarr=(["test"]=10 ["second"]=2 ["three hunnid"]=300)

### difference between @ *

# for name in "${!aarr[@]}"; do
#   echo "$name", "${aarr[$name]}"
# done
#
# for name in "${!aarr[*]}"; do
#   echo "$name", "${aarr[$name]}"
# done

declare -p aarr >aarr.save

unset 'aarr["three hunnid"]'

# printaarr aarr

source aarr.save

printaarr aarr 0 3
echo kawww kaakaaww
printaarr aarr 2 3

if [[ "${aarr[*]}" =~ "10" ]]; then
  echo 10 found
fi
