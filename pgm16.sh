# to create and move the file
echo "enter the directory"
read di
mkdir $di
cd $di
echo "enter file name"
read name
echo " ">$name
echo "enter 1 to move the file"
read ch
if [ $ch -eq 1 ] ;
then
	mv $name /home/documents/unix_programs/test
	echo "file is moved"
fi
