#!/bin/bash
echo "Enter numbers separated by space:"
read -a arr

sorted=($(for i in "${arr[@]}"; do
    echo $i
done | sort -n))

echo "Numbers in ascending order:"
echo "${sorted[@]}"
