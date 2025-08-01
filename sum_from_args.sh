#!/bin/sh

# ─────[ Script to Find Sum of Numbers from Command Line Arguments ]─────

if [ $# -eq 0 ]; then
  echo "⚠️  Please provide numbers as command line arguments."
  echo "📌  Example: ./sum_from_args.sh 5 10 15"
  exit 1
fi

sum=0

for num in "$@"
do
  sum=$(expr "$sum" + "$num")
done

echo "🧮 Total sum of numbers is: $sum"
