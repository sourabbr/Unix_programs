#takes a directory file name as input and recurssively descends through all the files in that directory and checks for the maximum size and prints it
echo "enter the file name:"
read dir
if [ ! -d $dir ] ;then
	echo "invalid directory"
	exit
fi
large=0
for file in `find $dir -type f`
do
	size=`stat -c %s $file`
	echo "size of $file is $size"
	if [ $size -gt $large ] ;
	then
		large=$size
	fi
done
echo "the largest size=$large"
