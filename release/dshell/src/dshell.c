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
    printf("quit or exit to exit\n");
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