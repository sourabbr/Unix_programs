#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<unistd.h>
#include<fcntl.h>
int main()
{
	int fd;
	char str1[16]="department of is";
	char str2[16]="department of cs";
	fd=creat("ise",0622);
	if(fd<0)
	{
		printf("system call has failed\n");
		return 0;
	}
	write(fd,str1,16);
	lseek(fd,48,SEEK_SET);
	write(fd,str2,16);
	return 0;
}
