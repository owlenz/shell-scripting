#!/usr/bin/env bash

arr=({1..4})

echo "${arr[@]}"

declare -A aarr

aarr["test"]=10
aarr["second"]=2
aarr["three hunnid"]=300

# echo "${aarr[@]}"
# unset aarr["three hunnid"]
echo "${!aarr[@]}"

for name in "${!aarr[@]}"; do
  echo name: "$name" value: "${aarr["$name"]}"
done

aarr2=(["test"]=10 ["balls"]=12)
