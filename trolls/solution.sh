#!/bin/bash

string_with_vowels=$1

troll () {
    echo "$string_with_vowels" | sed -r 's/[AaEeIiOoUu]+//g'
    return
}

troll
