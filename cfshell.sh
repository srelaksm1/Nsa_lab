#!/bin/bash
echo "Enter the four integer: "
read num1 num2 num3 num4
sum=$((num1 + num2 + num3 + num4))
average=$(echo "scale=2; ($sum) / 4" | bc)
product=$((num1 * num2 * num3 * num4))
echo "Sum: $sum"
echo "Average: $average"
echo "Product: $product"

