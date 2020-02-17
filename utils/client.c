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


int readinput(char *buf);

int main() { 
    int sockfd, numbytes; 
    char buf[MAXDATASIZE]; 
    struct sockaddr_in server_addr; 

    printf("\n======================client initialization======================\n"); 
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
    
     while(1) { 
        bzero(buf,MAXDATASIZE); 
        printf("\nBegin receive...\n"); 
        if ((numbytes = recv(sockfd, buf, MAXDATASIZE, 0)) == -1){  
            perror("recv"); 
            exit(1);
        } else if (numbytes > 0) { 
            int len, bytes_sent;
            buf[numbytes] = '\0'; 
            printf("Received: %s\n",buf);
            printf("Send:"); 
            char msg[100];
            //scanf("%[^\n]%*c",msg);
            readinput(msg);
            len = strlen(msg); 
            //sent to the server
            if(send(sockfd, msg,len,0) == -1){ 
                perror("send error"); 
            }
        } else { 
            printf("soket end!\n"); 
            break;
        } 
    }  
    close(sockfd); 
    return 0;
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