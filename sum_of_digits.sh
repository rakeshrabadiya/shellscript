#!/bin/sh

# ─────[ Script to Calculate Sum of Digits of a Number ]─────

echo "Enter a number:"
read num

sum=0

while [ "$num" -ne 0 ]
do
  digit=$(expr "$num" % 10)
  sum=$(expr "$sum" + "$digit")
  num=$(expr "$num" / 10)
done

echo "🔢 Sum of digits: $sum"
