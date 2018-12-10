//to move the cursor after 48 bytes
#include<stdio.h>
#include<sys/types.h>
int main()
{
	char buf1[16]="department of is";
	char buf2[16]="department of cs";
	int fd;
	fd=creat("ise",0622);
	if(fd<0)
	{
		return 0;
	}
	write(fd,buf1,16);
	lseek(fd,48,SEEK_SET);
	write(fd,buf2,16);
	return 0;
}
