#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <unistd.h>
#include <arpa/inet.h>

#define SERVER_PORT 22468
#define MAXDATASIZE 100 
#define SERVER_IP "127.0.0.1"

extern char inputbuff[80];
extern int msg_ready;
int readinput(char *buf);

void * client_process(void *arg) {
    int sockfd, numbytes;
    char buf[MAXDATASIZE];
    struct sockaddr_in server_addr;
    printf("client up\n");


    if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
        perror("socket");
        exit(1);
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(SERVER_PORT);
    server_addr.sin_addr.s_addr = inet_addr(SERVER_IP);
    bzero(&(server_addr.sin_zero),sizeof(server_addr.sin_zero));

    if (connect(sockfd, (struct sockaddr *)&server_addr,sizeof(struct sockaddr_in)) == -1){
        perror("connect error");
        exit(1);
    }
    printf("client connect ok\n");
    static int send_flag = 0;
    while(1) {

        int len, bytes_sent;
        send_flag = 0;
        char msg[100];
        if (( msg_ready == 1) && (send_flag == 0))
        {
            len = strlen(inputbuff);
            memcpy(msg,inputbuff,len);
            //printf("\nBegin send...\n");
            //sent to the server
            if(send(sockfd, msg,len,0) == -1){
                perror("send error");
            }
            //printf("done...\n");
            send_flag = 1;

        }
        sleep(1);
    }
    close(sockfd);
    return (void *)0;
}

