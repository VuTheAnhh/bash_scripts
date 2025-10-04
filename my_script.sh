]#!/bin/bash

# Author: Vu The Anh
# Created: 07/09/2025
# Last Modified: 09/09/2025

# Description:
# This script only to practice the latest commands that I learned

# Usage:
# my_script.sh

echo "-----My Script-----"
echo "Hello $USER"
echo "The time running this script is $(date +%D)"
echo "This script is from $(pwd)"
echo "-------------------"

echo "Let's calculate with 2 numbers:"
echo "Pls enter the first number:"
read -r x
echo "Pls enter the second one:"
read -r y
echo "$x + $y = $((x + y))"
echo "$x - $y = $((x - y))"
echo "$x / $y = $((x / y))"
echo "$x * $y = $((x * y))"
echo "$x % $y = $((x % y))"
echo "$x ** $y = $((x ** y))"

echo "We can create an array from $x & $y"
array=($x $y)
array=("Apple", "Orrange", "Lemon")
for arr in "${array[@]}"; do
 echo $arr
done 

arr=('-' '\' '|' '/')
while true; do
 for c in "${arr[@]}"; do
  echo -en "\r $c "
  sleep .5
 done
done
exit 0
