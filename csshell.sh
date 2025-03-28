#!/bin/bash
echo "enter the number:"
read n1 
if (( $n1 % 2 == 0 ));
then
echo "Number is even"
else
echo "Number is odd"
fi

