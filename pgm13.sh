# to count the number of regular and directory files in a given directory
echo "enter the directory:"
read di
cd $di
echo "the number of files:`find . -type f|wc -l`
echo "the number of directory files:`find . -type d|wc -l`
