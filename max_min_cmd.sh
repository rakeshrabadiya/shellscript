if [ $# -eq 0 ]; then
  echo "❌ Error: Please pass numbers as command-line arguments."
  echo "Usage: ./max_min_cmd.sh 45 22 89 12"
  exit 1
fi

max=$1
min=$1

for num in "$@"
do
  if [ $num -gt $max ]; then
    max=$num
  fi
  if [ $num -lt $min ]; then
    min=$num
  fi
done

echo "------------------------------"
echo "Numbers  : $@"
echo "Maximum  : $max"
echo "Minimum  : $min"
echo "------------------------------"
