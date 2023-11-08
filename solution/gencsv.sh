#!/usr/bin/env bash
RANDOM=$$
count="$1"
[[ -z "$count" ]] && count=7

num=0
while [[ ${num} -le ${count} ]]
do
    echo $num, $RANDOM
    (( num = num +1 ))
done > inputFile