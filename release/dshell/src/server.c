#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/shm.h>
#include <errno.h>

#define PORT 22468
#define KEY 123
#define SIZE 1024
#define MAXDATASIZE 100
int msg_recv_ok = 0;
extern char commandbuff[80];

void * server_process(void *args)
{

    char buf[100];
    memset(buf,0,100);
    printf("\nserver up\n");
    int server_sockfd,client_sockfd;
    socklen_t server_len,client_len;

    struct  sockaddr_in server_sockaddr,client_sockaddr;

    /*create a socket.type is AF_INET,sock_stream*/
    server_sockfd = socket(AF_INET,SOCK_STREAM,0);

    server_sockaddr.sin_family = AF_INET;
    server_sockaddr.sin_port = htons(PORT);
    server_sockaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    server_len = sizeof(server_sockaddr);

    int on;
    setsockopt(server_sockfd, SOL_SOCKET, SO_REUSEADDR,&on,sizeof(on));
    /*bind a socket or rename a sockt*/
    if(bind(server_sockfd, (struct sockaddr*)&server_sockaddr, server_len)==-1){
        printf("bind error");
        exit(1);
    }

    if(listen(server_sockfd, 5)==-1){
        printf("listen error");
        exit(1);
    }

    client_len = sizeof(client_sockaddr);

    pid_t ppid,pid;
    int numbytes,sockfd;
    static int connected = 0;

    while(1) {
        if (connected == 0) {
            if((client_sockfd = accept(server_sockfd,
                (struct sockaddr*)&client_sockaddr,
                &client_len)) == -1){
                    printf("connect error");
                exit(1);
            } else {
                connected = 1;
                printf("create connection successfully\n");
            }
        } else {
            msg_recv_ok = 0;
            if ((numbytes = recv(client_sockfd, buf, MAXDATASIZE, 0)) <= 0){
                //perror("recv");
                if (errno != EINTR) {
                    close(client_sockfd);
                    connected = 0;
                }
                //exit(1);
            } else if (numbytes > 0) {
                buf[numbytes] = '\0';
                memcpy(commandbuff,buf,sizeof(buf));
                msg_recv_ok = 1;
                //printf("Received: %s\n",buf);
                sleep(1);
            }
        }
    }
    return 0; //never return
}

