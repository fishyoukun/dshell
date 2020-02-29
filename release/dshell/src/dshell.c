#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>
#include <pthread.h>

int printwc();
int captureinput();
void signal_process(int sigID);
int do_exection(char *command);
int read_filename();
char command_buff[80];

#define MAX_LEN 80
char inputbuff[80];

char filename[MAX_LEN];
int msg_ready;


extern void * client_process(void *arg);
int main()
{
    msg_ready = 0;
    signal(SIGINT,signal_process);

    int err;
    pthread_t ntid;
    err = pthread_create(&ntid, NULL, client_process, NULL);
    if (err != 0)
        printf("can't create thread: %s\n", strerror(err));
    printwc();
    captureinput(); 
    return 0; // should never return 
}


int printwc()
{
    printf("welcome to dshell\n");
    return 0;

}
/*
setflag 1,2,3,5
*/
#define ARG_MAX 9
typedef struct
{
    char fun_name[20];
    int arg[ARG_MAX];
}t_FUNARGS;
int parse_cmd(char *command)
{
    t_FUNARGS funagrs;
    int begin,end,i;
    memset((char *)&funagrs,0x00,sizeof(funagrs));
    int len =  strlen(command);
    for (i = 0;i < len;i++)
    {
        if (command[i] == ' ')
        {
            memcpy(funagrs.fun_name,command,i);
            break;
        }        
    }
    //printf("i = %d\n",i);
    begin = i + 1;
    char buff[8];
    int j = 0;
    memset(buff,0,sizeof(buff));
    for (i = begin;i <= len ;i++)
    {
        if (command[i] == ',')
        {
            printf("i = %d\n",i);
            memcpy(buff,&(command[begin]),(i-begin));
            
            printf("buff %s\n",buff);
            funagrs.arg[j] = strtol(buff,NULL,0);
            begin = i+1;
            j++;
            continue;
        }
    }

    printf("i = %d\n",i);
    memcpy(buff,&(command[begin]),(len-begin));
    
    printf("buff %s\n",buff);
    funagrs.arg[j] = strtol(buff,NULL,0);
    
    j++;
    printf("valid arg number %d\n",j);

    printf("commmand %s \n",funagrs.fun_name);
    for (i = 0;i < ARG_MAX;i++)
    {
        printf("arg[%d] %d \n",i,funagrs.arg[i]);
    }
    return 0;
}
int do_exection(char *command)
{
    
    if ((!strcmp(command,"quit")) || (!strcmp(command,"exit")))
    {
        printf("quit dshell\n");
        exit(0);
    }
    else
    {
        printf("$$ command %s,len %ld\n",command,strlen(command));
        //parse_cmd(command);
        
        msg_ready = 1 ;
        
    }

    return 0;
}
void signal_process(int sigID)
{
    printf("dshell abort\n");
    abort();
    return;
}
int readinput(char *buf)
{
    int count = 0;
    char c;
    
    while ((c = getchar() )!= '\n') {
            buf[count] = c;
            count++;
    }
    buf[count] = '\0';
    return 0;

}

int captureinput()
{    
    char c;  
    memset(inputbuff,0,sizeof(inputbuff));
    while(1) {
        printf("$$ ");        
        msg_ready = 0;
        readinput(&inputbuff[0]);
        msg_ready = 1;
        do_exection(&inputbuff[0]);  
        sleep(1);      
    }
    return 0;
}