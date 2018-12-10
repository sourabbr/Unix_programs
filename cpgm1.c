#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<unistd.h>
#include<signal.h>
int main()
{
	int i,n,kpid;	
	pid_t pid;
	printf("enter the number of forks:\n");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		pid=fork();
		if(pid==0)
		{
			printf("child\n");
			printf("process id=%d\n",getpid());
			printf("parent process id=%d\n",getppid());
		}
		else
		{
			wait(0);
			printf("parent\n");
			printf("process id=%d\n",getpid());
			printf("child process id=%d\n",pid);
			printf("enter the process id you want to kill:\n");
			scanf("%d",&kpid);
			kill(kpid,SIGKILL);
			printf("process terminated\n");
			
		}
	}
	return 0;
}
