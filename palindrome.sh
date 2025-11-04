

read -p "Enter a string: " str


cleaned=$(echo "$str" | tr -d ' ' | tr '[:upper:]' '[:lower:]')


rev=$(echo "$cleaned" | rev)


if [ "$cleaned" = "$rev" ]; then
    echo "✅ '$str' is a palindrome."
else
    echo "❌ '$str' is not a palindrome."
fi

