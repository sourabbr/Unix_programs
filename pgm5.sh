#to print the arguments in the reverse order
echo "The number of arguments are :$#"
length=$#
echo "the reverse order of arguments:"
while [ $length -ne 0 ]
do
	eval echo "\$$length"
	length=`expr $length - 1`
done
