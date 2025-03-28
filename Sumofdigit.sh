#Write a shell script to print sum of all digits of a given number
#!/bin/bash
echo "Enter the number"
read n
g=$n
sum_digit=0
while [ $n -gt 0 ]; 
do
k=$(( $n % 10 ))

sum_digit=$(( $sum_digit + $k ))
n=$(( n / 10 ))
done
echo  Sum of $g : $sum_digit


