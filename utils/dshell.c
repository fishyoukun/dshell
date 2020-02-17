#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>

int printwc();
int captureinput();
void signal_process(int sigID);
char oldPS1[80];
int main()
{
    signal(SIGINT,signal_process);
    #if 0
    memset(oldPS1,0,sizeof(oldPS1));
    
    char *p = getenv("PS1");
    if (p == NULL) {
        printf("getenv error\n");
        return -2;
    }
    printf("%s \n",p);
    
    strncpy(oldPS1,p,sizeof(oldPS1));
    #endif
    
    
    printwc();
    captureinput();
    
    return 0;


}

int printwc()
{
    printf("welcome to dshell\n");
    return 0;

}
void signal_process(int sigID)
{
    printf("dshell abort\n");
    abort();
    return;
}

int captureinput()
{
    char inputbuff[80];
    
    memset(inputbuff,0,sizeof(inputbuff));
    while(1) {
        printf("$$ ");
        scanf("%[^\n]%*c",&inputbuff[0]);       
        printf("$$ input: %s\n",inputbuff);

    }



}