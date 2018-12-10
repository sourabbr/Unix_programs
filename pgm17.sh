# to copy source to destination
echo "enter the source"
read so
echo "enter the destination"
read de
if [ ! -f $so ] ;
then
	echo "source doesnt exists"
	exit 1
elif [ -f $de ] ;
then
	echo "destination may overwrite"
	exit 2
fi
cp $so $de
status=$?
if [ $status -eq 0 ] ;
then	
	echo "copy successful"
fi
