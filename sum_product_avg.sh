echo "Enter 4 integer numbers:"
read a
read b
read c
read d

sum=$((a + b + c + d))
product=$((a * b * c * d))
average=$((sum / 4))

echo "------------------------------"
echo "Sum     = $sum"
echo "Product = $product"
echo "Average = $average"
echo "------------------------------"
