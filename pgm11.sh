# to print whether a number is even or odd
echo "enter a number:"
read num
a=`expr $num % 2`
if [ $a -eq 0 ] ;
then
	echo "even number"
else
	echo "odd number"
fi
