# to check whether a given file is a regular or a directory file
echo "enter the file name"
read fn
if [ -f $fn ] ;
then
	echo "regular file"
elif [ -d $fn ] ;
then
	echo "directory file"
fi
