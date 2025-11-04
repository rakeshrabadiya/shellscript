#!/bin/bash
echo "Enter a character:"
read ch

if [[ $ch =~ [A-Z] ]]
then
    echo "Uppercase letter"
elif [[ $ch =~ [a-z] ]]
then
    echo "Lowercase letter"
elif [[ $ch =~ [0-9] ]]
then
    echo "Digit"
else
    echo "Special character"
fi
