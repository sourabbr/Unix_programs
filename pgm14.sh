# to print the total number of lines, words and characters in a given file
echo "enter the file name:"
read fn
if [ -f $fn ] ;
then
	echo $(wc -l $fn) "lines"
	echo $(wc -w $fn) "words"
	echo $(wc -m $fn) "characters"
fi
