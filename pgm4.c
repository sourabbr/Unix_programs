//c program asking user the number of child processes to be created
#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
int main()
{
	pid_t pid;
	int n,i,a[20];
	printf("parent process id=%d\n",getppid());
	printf("enter the number of child processes to be created: ");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		pid=fork();
		if(pid==0)
		{
			printf("\nchild process\n");
			printf("process id=%d\n",getpid());
			printf("parent process id=%d\n",getppid());
		}
		else
		{
			wait(0);
		}
	}
	return 0;
}
			
