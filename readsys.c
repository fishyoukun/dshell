#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define SYMBOL_LIST_MAX 100
#define LINE_MAX 100
#define SYMBOL_NAME_MAX 80
#define FILETAIL 16
typedef struct {
    void *addr;
    char type;
    char name[SYMBOL_NAME_MAX];
}Tsym;

int parse_sysfile(char * filename,Tsym *p_parse_result,int *valid_count);
int parse_sym(char *buff,Tsym *p_parse_result,int *length);
int printsym(Tsym *parse_sym,int len);
int get_exec_len(FILE*pfile,int compoundfilelen,int *exec_size,int *no_pad_len);

int main()
{   
    #define version(x,y) #x #y

    int symbol_count;
    Tsym * symbol_list;
    symbol_list = malloc(sizeof(Tsym)*SYMBOL_LIST_MAX);
    if (symbol_list == NULL) {
        printf("malloc fail,return\n");
        return -2;
    }
    parse_sysfile("a.out",symbol_list,&symbol_count);
    printsym(symbol_list,symbol_count);    
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
    char mark[] = "KISS";
    int pos;

    fseek(pfile,-FILETAIL,SEEK_END);

    while (fgets(buff,LINE_MAX,pfile) != NULL){

        //printf("line: %s\n",buff); 
          
        if ((buff[0] != 'K') && (found != 1)) {
            found = 0;            
            continue;
        }
        else if ((buff[0] == 'K') && (buff[1] == 'I') && (buff[2] == 'S') && (buff[3] == 'S')){
            
            fseek(pfile,0,SEEK_CUR);
            pos = ftell(pfile);
            printf("pos %d\n",pos);
            found = 1;            
            continue;
        }
        else {            
            if (found == 1) {                
                bin_size = strtol(buff,NULL,10);
                found = 0;
                break;
            }
        }         
                
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
