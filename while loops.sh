#!/bin/bash

fruits=("apple" "banana" "Orange" "grape" "kiwi")
index=0

while [ $index -lt ${#fruits[@]} ]
do
    echo " fruits: ${fruits[$index]}" 
    index=$((index + 1))
done