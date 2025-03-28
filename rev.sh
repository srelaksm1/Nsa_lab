#!/bin/bash
echo "Enter the number:"
read n
rev=$(echo $n | rev)
echo "Reversed number is:$rev"
