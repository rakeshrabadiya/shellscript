echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Choose operation:"
echo "a. Addition"
echo "b. Subtraction"
echo "c. Multiplication"
echo "d. Division"
read choice

case $choice in
  a)
    result=$((a + b))
    echo "Result: $a + $b = $result"
    ;;
  b)
    result=$((a - b))
    echo "Result: $a - $b = $result"
    ;;
  c)
    result=$((a * b))
    echo "Result: $a * $b = $result"
    ;;
  d)
    if [ $b -ne 0 ]; then
      result=$(echo "scale=2; $a / $b" | bc)
      echo "Result: $a / $b = $result"
    else
      echo "Error: Division by zero not allowed."
    fi
    ;;
  *)
    echo "Invalid choice!"
    ;;
esac
