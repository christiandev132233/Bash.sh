#!/bin/bash

score=85
if [ $score -ge 90 ]
then
    echo "You got an A!"
elif [ $score -ge 80 ]
then
    echo "You got a B!"
elif [ $score -ge 70 ]
then
    echo "You got a C!"
else
    echo "You need to improve your score."
fi