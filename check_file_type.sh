#!/bin/bash
echo "Enter a file name:"
read file

if [ -e "$file" ]
then
    if [ -f "$file" ]
    then
        echo "It is an ordinary file."
    else
        echo "It is not an ordinary file."
    fi
else
    echo "File does not exist."
fi


