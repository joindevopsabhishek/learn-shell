#!/bin/bash
var1=10
var2=20
var3=abhi
echo "$var1+$var2"
echo "$((var1+var2+var3))"

declare -i COUNT=5 # Its declres integer
COUNT=COUNT+1
echo "count is: $COUNT"

FRUITS=("APPLE" "BANANA" "CHERRY")
echo "all fruits: ${FRUITS[@]}"
echo "first fruit: ${FRUITS[0]}"
echo "second fruit: ${FRUITS[1]}"

name="abhi shek k"
echo "${name}nekanti"