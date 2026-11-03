#!/bin/bash

age=20
grade=85

if [ $age -gt 18 ]
then
echo "You are eligigle base on age!"
if [ $grade -ge 80 ]
then
echo "You are eligible based on grade!"
echo "You are eligible for the Scholarship!"
else
echo "Sorry your age is not high enough!"
fi
else
echo "Sorry you are not eligible based on age!"
fi