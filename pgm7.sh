#accepts file names as arguments and contains the file also the code to recreate the file
for i in $*
do
	echo "echo $i"
	echo "echo `cat $i`>$i"
done
