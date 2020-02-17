#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>

int printwc();
int captureinput();
void signal_process(int sigID);
do_exection(char *command);

char inputbuff[80];
typedef int (*FUNC)();
int func0()
{   
    printf("func0 called\n");
    return 0;
}

int func1(int a)
{   
    printf("func1 called para1 %d\n",a);
    return 0;
}
int func2(int a,int b)
{   
    printf("func2 called para1 %d,para2 %d\n",a,b);
    return 0;
}

int main()
{
    signal(SIGINT,signal_process);

    FUNC pfun = NULL;
    pfun = &func0;
    pfun();
    pfun = &func1;
    pfun(3);
    pfun = &func2;
    pfun(2,5);     
    printwc();
    captureinput();    
    return 0;
}

int printwc()
{
    printf("welcome to dshell\n");
    return 0;

}
do_exection(char *command)
{

}
void signal_process(int sigID)
{
    printf("dshell abort\n");
    abort();
    return;
}


int captureinput()
{    
    char c;
    int count = 0;    
    memset(inputbuff,0,sizeof(inputbuff));
    while(1) {
        printf("$$ ");
        
        while ((c = getchar() )!= '\n') {
            inputbuff[count] = c;
            count++;
        }
        inputbuff[count] = '\0';
        count = 0;
        printf("$$ input: %s\n",inputbuff);
    }
    return 0;
}