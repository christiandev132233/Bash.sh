#!/bin/bash

set -x

echo "Starting the Script"
X=10
Y=20
Z=$((X + Y))
echo "the value of Z is: $Z"

set +x
echo "Ending the Script"