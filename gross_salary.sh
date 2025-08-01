echo "Enter Basic Salary:"
read basic

# Usually HRA = 20% of basic, DA = 40% of basic
hra=$(echo "scale=2; 0.20 * $basic" | bc)
da=$(echo "scale=2; 0.40 * $basic" | bc)
gross=$(echo "scale=2; $basic + $hra + $da" | bc)

echo "------------------------------"
echo "Basic Salary  : ₹$basic"
echo "HRA (20%)     : ₹$hra"
echo "DA (40%)      : ₹$da"
echo "------------------------------"
echo "Gross Salary  : ₹$gross"
echo "------------------------------"
