#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main()
{
    char str[]="bharadwaj";
    int i=0;
    int n=strlen(str);
    printf("%d\n",n);
    n--;
    char temp;
    while(i<n)
    {
        temp=str[i];
        str[i]=str[n];
        str[n]=str[i];
        i++;
        n--;
    }
    printf("\n");
    printf("%s\n",str);

    return 0;
}
