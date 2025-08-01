#!/bin/sh

# ─────[ Script to Reverse a String ]─────

echo "Enter a string:"
read str

# Get length of string
len=$(echo "$str" | wc -c)
len=$((len - 1))  # wc -c counts newline too

rev=""

while [ $len -gt 0 ]
do
  ch=$(echo "$str" | cut -c $len)
  rev="$rev$ch"
  len=$((len - 1))
done

echo "🔁 Reversed string: $rev"
