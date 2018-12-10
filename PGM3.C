//to print child and parent process id
#include<stdio.h>
#include<sys/types.h>
int main()
{
	pid_t pid;
	pid=fork();
	if(pid==0)
	{
		printf("child process\n");
		printf("process id=%d\n",getpid());
		printf("parent process id=%d\n",getppid());
	}
	else
	{
		wait(0);
		printf("\nparent process\n");
		printf("process id=%d\n",getpid());
		printf("child process id=%d\n",pid);
	}
	return 0;
}
