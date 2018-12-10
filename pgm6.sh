#to check two file permissions and display whether they are identical or not
ls -l $1|cut -d " " -f1>file1per
ls -l $2|cut -d " " -f1>file2per
if cmp file1per file2per
then
	echo "$1 and $2 have identical permissions"
	cat file1per
else
	echo "$1 and $2 have different permissions"
	echo "$1 permission:"
	cat file1per
	echo "$2 permission:"
	cat file2per
fi
