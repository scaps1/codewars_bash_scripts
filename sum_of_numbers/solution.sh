#!/bin/bash

summing () {
    for (( i=$1; i <= $2; i++ )) {
        string=$((s + i))
    }

    echo "$string"
}

{ [ $1 -le $2 ] && summing $1 $2; } || { [ $1 -ge $2 ] && summing $2 $1; } || echo $1
