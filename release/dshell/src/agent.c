#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h> 

#define SYMBOL_LIST_MAX 2048
#define LINE_MAX 100
#define SYMBOL_NAME_MAX 80
#define FILETAIL 16
#define MARK "KISS"
typedef struct {
    void *addr;
    char type;
    char name[SYMBOL_NAME_MAX];
}Tsym;
#define MAX_LEN 80
#define ARG_MAX 9
typedef struct
{
    char fun_name[20];
    int arg[ARG_MAX];
}t_FUNARGS;

extern void * server_process(void *args);
extern int msg_recv_ok;
char commandbuff[80];
char filename[MAX_LEN];
int msg_process = 0;

int parse_sysfile(char * filename,Tsym *p_parse_result,int *valid_count);
int parse_sym(char *buff,Tsym *p_parse_result,int *length);
int printsym(Tsym *parse_sym,int len);
int get_exec_len(FILE*pfile,int compoundfilelen,int *exec_size,int *no_pad_len);
int do_exection(char *command);
int read_filename(char *pfilename);

int dshell_init()
{   
    int err;
    pthread_t ntid;
    err = pthread_create(&ntid, NULL, server_process, NULL);
    if (err != 0)
        printf("can't create thread: %s\n", strerror(err));
    
    int symbol_count;
    Tsym * symbol_list;
    symbol_list = malloc(sizeof(Tsym)*SYMBOL_LIST_MAX);
    if (symbol_list == NULL) {
        printf("malloc fail,return\n");
        return -2;
    }
    read_filename(filename);
    parse_sysfile(filename,symbol_list,&symbol_count);
    //printsym(symbol_list,symbol_count);  
    while(1)
    {
        msg_process = 0;
        if ((msg_recv_ok == 1) && (msg_process == 0))
        {
            do_exection(commandbuff);
            msg_process = 1;
        }
        sleep(1);
    }  

    return 0;
}
/*
KISS
*/
int get_exec_len(FILE *pfile,int compoundfilelen,int *exec_size,int *no_pad_len)
{
    char buff[LINE_MAX];
    unsigned int found = 0;
    int bin_size = 0;
    char mark[] = MARK;
    int pos;

    fseek(pfile,-FILETAIL,SEEK_END);

    while (fgets(buff,LINE_MAX,pfile) != NULL){
        //printf("line: %s\n",buff);           
        if ((buff[0] != mark[0]) && (found != 1)) {
            found = 0;            
            continue;
        }
        //else if ((buff[0] == 'K') && (buff[1] == 'I') && (buff[2] == 'S') && (buff[3] == 'S')){
        else if ((buff[0] == mark[0]) && (buff[1] == mark[1]) 
            && (buff[2] == mark[2]) && (buff[3] == mark[3])){
            fseek(pfile,0,SEEK_CUR);
            pos = ftell(pfile);
            //printf("pos %d\n",pos);
            found = 1;            
            continue;
        }
        else {            
            if (found == 1) {                
                bin_size = strtol(buff,NULL,10);
                break;
            }
        }         
                
    }
    if (found == 0) {
        printf("MARK not found!\n");
        return -7;
    }
    *exec_size = bin_size;
    *no_pad_len = pos - sizeof(mark);
    return 0;
}

int parse_sysfile(char * filename,Tsym *p_parse_result,int *valid_count)
{
    FILE *pfile = fopen(filename,"r");

    if (pfile == NULL) {
        printf("open file fail\n");
        perror("open fail\n");
        return -1;
    }
    char buff[LINE_MAX];
    int origin_len = 0;
    int nopadlen = 0;
    memset(buff,0x00,sizeof(buff));
    fseek(pfile,0,SEEK_END);
    int filesize = ftell(pfile);
    printf("file size %d\n",filesize);
    get_exec_len(pfile,filesize,&origin_len,&nopadlen);
    //printf("origin len %d,no pad len %d\n",origin_len,nopadlen);

    
    fseek(pfile,origin_len,SEEK_SET);
    while (fgets(buff,LINE_MAX,pfile) != NULL){        
        //printf("line: %s",buff);    
        parse_sym(buff,p_parse_result,valid_count); 
        //printf("current pos %ld\n",ftell(pfile));   
        //printf("pos %ld\n",ftell(pfile));   
        if (ftell(pfile) >= nopadlen)
            break; 
    }
    printf("total valid symbol %d.\n",*valid_count);
    
    fclose(pfile);

    return 0;
}

int parse_sym(char *buff,Tsym *p_parse_result,int *length)
{
    Tsym tsym;
    static int count = 0; 
    char * end;
    //printf("buff: %s",buff); 
    if (buff[0] == ' ') {
        //printf("info >> not valid symbol line,skip.\n");
        return -5;
    }

    tsym.addr = (void *)strtoull(buff,&end,16);
    //printf("addr = 0x%016llx,",(unsigned long long)tsym.addr);    
    tsym.type = *(++end);
    //printf("type = %c,",tsym.type);    
    end++;
    strcpy(tsym.name,++end);
    //printf("name = %s",tsym.name);
    p_parse_result[count] = tsym;
    count++;
    *length = count;
    return 0;
}
int read_filename(char *pfilename)
{
    int cnt = readlink("/proc/self/exe", pfilename, MAX_LEN);
    if (cnt < 0 || cnt >= MAX_LEN)
    {
        printf("***Error***\n");
        exit(-1);
    }
    
    printf("current absolute path:%s\n", pfilename);
    return 0;
}

int printsym(Tsym *parse_sym,int len)
{
    int i ;
    printf("========valid sym number %d ==============\n",len);
    for (i = 0;i < len;i++){
        printf("%02d>>",i);
        printf("addr = 0x%016llx,",(unsigned long long)parse_sym[i].addr); 
        printf("type = %c,",parse_sym[i].type);
        printf("name = %s",parse_sym[i].name);
    }
    return 0;
}



int parse_cmd(char *command)
{
    t_FUNARGS funagrs;
    int begin,end,i;
    int no_arg = 0;
    memset((char *)&funagrs,0x00,sizeof(funagrs));
    int len =  strlen(command);
    for (i = 0;i < len+1;i++)
    {
        if ((command[i] == ' ') || (command[i] == '\0'))
        {
            memcpy(funagrs.fun_name,command,i);
            if (command[i] == '\0')
                no_arg = 1;
            break;
        }        
    }
    if (no_arg != 1){
        //printf("i = %d\n",i);
        begin = i + 1;
        char buff[8];
        int j = 0;
        memset(buff,0,sizeof(buff));
        for (i = begin;i <= len+1 ;i++)
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

        //printf("i = %d\n",i);
        memcpy(buff,&(command[begin]),(len-begin));
        
        //printf("buff %s\n",buff);
        funagrs.arg[j] = strtol(buff,NULL,0);
        
        j++;
        printf("valid arg number %d\n",j);

        printf("commmand %s \n",funagrs.fun_name);
        for (i = 0;i < ARG_MAX;i++)
        {
            printf("arg[%d] %d \n",i,funagrs.arg[i]);
        }
    } else {
        printf("commmand %s \n",funagrs.fun_name);
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
        parse_cmd(command);       
    }

    return 0;
}
