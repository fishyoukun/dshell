#include<stdio.h>
#include <unistd.h>
int g;
const int f = 0;
static int s;
int m = 6;
const char *string = "nece to meet you";
const char array[] = "glad to talk to you";
int func()
{
    printf("func called\n");
    return 0;
}
int dumphex(unsigned char *start,unsigned int length)
{
    int i = 0;
    int len = length;

    unsigned char *p = NULL;
    p = start;
    for (i = 0;i < len;i++) {
        if ((i % 16) == 0)
            printf("0x%p:",(p+i)); 
        printf("%02x ",*(p+i));
        if ((i % 16) == 15)            
            printf("\n");
    }
    
    
}
typedef int (*ft)(); 
int main()
{
    int a = 1;
    int b = 2;
    int c = a+b;
    static int count;
    ft pf = NULL;
    pf = (ft )0x4005f6;
    dumphex((unsigned char *)0x600000,0x1000);
    dumphex((unsigned char *)0x400000,0x1000);
    dumphex((unsigned char *)0x601000,0x1000);
    while (1) {
    count++;
    g = count + 4;   
    printf("=============begin================\n");
    printf("count = %d\n",count);
    printf("main %p\n",&main);
    printf("g addr %p,value %d\n",&g, g);
    printf("f addr %p, value %d\n",&f,f);
    printf("m addr %p, value %d\n",&m,m);
    printf("func addr %p\n",&func);
    printf("string addr %p, content %s value 0x%llx\n",&string,string,(unsigned long long )string);
    printf("s addr %p, s value %d\n",&s,s);
    printf("string again %s\n",(char *)0x400914);
    printf("array addr %p,content %s value 0x%llx\n",&array,array,(unsigned long long)array);
    
    pf();
    printf("=============end================\n");
    sleep(10);
    }
    return 0;
}