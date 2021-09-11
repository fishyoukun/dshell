#include<stdio.h>
#include <unistd.h>

extern int dshell_init();
int g;
const int f = 0;
static int s;
int m = 6;

int func()
{
    printf("func called\n");
    return 0;
}
int add(int a,int b)
{
    int c = a+b;
    printf("%d + %d = %d\n",a,b,c);
    return c;
}

int dec(int a, int b)
{
    int c = a -b;
    printf("%d - %d = %d\n",a,b,c);
    return c;
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
    dshell_init();
    //dumphex((unsigned char *)0x600000,0x1000);
    //dumphex((unsigned char *)0x400000,0x1000);
    //dumphex((unsigned char *)0x601000,0x1000);
    while (1) {
        count++;
        g = count + 4;           
        sleep(1);
    }
    return 0;
}