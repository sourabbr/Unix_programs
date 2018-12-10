echo "enter the directory:"
read di
mkdir $di
cd $di
echo "enter the file name:"
read f
echo " ">$f
echo "enter destination:"
read dest
mv $f $dest

