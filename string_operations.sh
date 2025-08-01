#!/bin/sh

# ─────[ Script for Basic String Operations ]─────

#!/bin/sh

# ─────[ Script for Basic String Operations with Input Validation ]─────

echo "Enter a string:"
read str

# a. Length of string
len=$(echo "$str" | wc -c)
len=$((len - 1))
echo "🔠 Length of string: $len"

# b. Extract substring
echo "Enter starting position to extract substring (number):"
read start
echo "Enter length of substring (number):"
read sublen

# Validate if numeric
expr "$start" + 0 >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "❌ Error: Start position must be a number."
  exit 1
fi

expr "$sublen" + 0 >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "❌ Error: Length must be a number."
  exit 1
fi

substring=$(echo "$str" | cut -c "$start"-$(expr "$start" + "$sublen" - 1))
echo "🔍 Extracted substring: $substring"

# c. Find location of a character
echo "Enter character to search:"
read ch

pos=1
found=0
while [ $pos -le $len ]
do
  current_char=$(echo "$str" | cut -c $pos)
  if [ "$current_char" = "$ch" ]; then
    echo "📍 Character '$ch' found at position: $pos"
    found=1
    break
  fi
  pos=$((pos + 1))
done

if [ $found -eq 0 ]; then
  echo "❌ Character '$ch' not found in the string."
fi

