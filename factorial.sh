echo "Enter a non-negative number:"
read n

if [ $n -lt 0 ]; then
  echo "❌ Error: Factorial of negative number is not defined."
  exit 1
fi

fact=1
i=1

while [ $i -le $n ]
do
  fact=$((fact * i))
  i=$((i + 1))
done

echo "------------------------------"
echo "Factorial of $n is: $fact"
echo "------------------------------"
