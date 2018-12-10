#accepts a path name and creates all the components in the file name as directories
temp=$IFS
IFS=/
for i in $*
do
	if [ -d $i ] ;
	then
		cd $i
	else
		mkdir $i
		cd $i
	fi
done
IFS=$temp
