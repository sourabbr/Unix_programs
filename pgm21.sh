echo "enter the array limit:"
read limit
echo "enter the elements:"
n=1
while [ $n -le $limit ]
do
	read num
	eval arr$n=$num
	n=`expr $n + 1`
done
echo "enter the key element:"
read key
low=1
high=$n
found=0
while [ $found -eq 0 -a $high -ge $low ]
do 
	mid=`expr $(((low+high)/2))`
	eval t=\$arr$mid
	if [ $key -eq $t ] ;
	then
		found=1
	elif [ $key -lt $t ] ;
	then
		high=`expr $mid - 1`
	else
		low=`expr $low + 1`
	fi
done
if [ $found -eq 1 ] ;
then
	echo "key found"
else
	echo "key not found"
fi  
