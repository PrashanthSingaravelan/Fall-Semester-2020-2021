#include<stdio.h>
#include<conio.h>

int main()
{
    char array[5]="apple";
    int i,ascii[5];

    for(i=0;i<5;i++)
    {
        ascii[i]=2+("%d",array[i]);
    }
}