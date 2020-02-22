#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

typedef struct{
    char print_buff[1024];
    int vernier;
}T_PRINFO;

#ifdef REDIR_DEBUG
char debugbuff[512];
#endif

T_PRINFO tprino;
#ifdef REDIR_DEBUG
#define printf(...) do {    \
    tprino.vernier += sprintf(tprino.print_buff, __VA_ARGS__);      \
    fputs(tprino.print_buff,stdout);\
    sprintf(debugbuff,"tprino.vernier %d\n",tprino.vernier);    \
    fputs(debugbuff,stdout);        \
    }while(0)
#else
#define printf(...) do {    \
    tprino.vernier += sprintf(tprino.print_buff, __VA_ARGS__); \
    fputs(tprino.print_buff,stdout);\
}while(0)
#endif




int main(void)
{
    printf("hello world\n");    
    return 0;
}