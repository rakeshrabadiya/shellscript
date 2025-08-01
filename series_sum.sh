#!/bin/sh

echo "Enter the value of x:"
read x

sum=1
term=1
i=1

while [ $i -le 4 ]
do
  term=$(expr $term \* $x)
  sum=$(expr $sum + $term)
  i=$(expr $i + 1)
done

echo "------------------------------"
echo "Series: 1 + x + x^2 + x^3 + x^4"
echo "Value of x: $x"
echo "Sum of series: $sum"
echo "------------------------------"

